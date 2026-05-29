import 'dart:convert';
import 'dart:io';

import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/backbone/rest_api_urls.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/data/model/global_data.dart';
import 'package:http/http.dart' as http;

class RestGateway {
  final Factory<CoinDto, Map<String, dynamic>> _coinDtoFactory;
  final Factory<GlobalDataDto, Map<String, dynamic>> _globalDataDtoFactory;

  RestGateway(this._coinDtoFactory, this._globalDataDtoFactory);

  Future<List<CoinDto>> getMarketsCoins(
    String currency,
    String order,
    int pageNumber,
    int perPage,
    String sparkline,
  ) async {
    final http.Response response = await _getRequest(
      baseUrl,
      coinsMarketsUrl,
      queryParams: <String, String>{
        'vs_currency': currency,
        'order': order,
        'page': pageNumber.toString(),
        'per_page': perPage.toString(),
        'sparkline': sparkline.toString(),
      },
    );

    if (response.statusCode == 429) {
      // Return an empty list if rate-limited
      throw const HttpException('429');
    } else if (response.statusCode != 200) {
      throw HttpException(
        'Failed to fetch coins. Status: ${response.statusCode}',
      );
    }

    final List<dynamic> jsonResponse = json.decode(response.body);
    final List<Map<String, dynamic>> jsonList =
        jsonResponse.map((dynamic d) => d as Map<String, dynamic>).toList();

    return jsonList.map(_coinDtoFactory.create).toList();
  }

  Future<GlobalDataDto> getGlobalData() async {
    final http.Response response = await _getRequest(baseUrl, globalDataUrl);
    final Map<String, dynamic> jsonResponse =
        json.decode(response.body) as Map<String, dynamic>;
    print(response.body);
    final Map<String, dynamic> globalDataJson =
        jsonResponse['data'] as Map<String, dynamic>;

    return _globalDataDtoFactory.create(globalDataJson);
  }

  Future<http.Response> _getRequest(
    String baseUrl,
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParams,
  }) async {
    try {
      await _checkInternetConnection();

      final Uri uri = Uri.https(baseUrl, path, queryParams);
      final http.Response response = await http.get(uri, headers: headers);
      return response;
    } on SocketException {
      throw const SocketException('No Internet connection.');
    } on FormatException {
      throw const FormatException('Invalid response format.');
    }
  }

  Future<void> _checkInternetConnection() async {
    try {
      final List<InternetAddress> result =
          await InternetAddress.lookup('google.com');
      if (result.isEmpty || result[0].rawAddress.isEmpty) {
        throw const SocketException('No Internet connection.');
      }
    } on SocketException {
      throw const SocketException('No Internet connection.');
    }
  }
}
