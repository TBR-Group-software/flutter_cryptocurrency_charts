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

  RestGateway(
    this._coinDtoFactory,
    this._globalDataDtoFactory,
  );

  Future<List<CoinDto>> getMarketsCoins(
    String currency,
    String order,
    int pageNumber,
    int perPage,
    String sparkline,
  ) async {
    final http.Response response = await _getRequest(baseUrl, coinsMarketsUrl,
        queryParams: <String, String>{
          'vs_currency': currency,
          'order': order,
          'page': pageNumber.toString(),
          'per_page': perPage.toString(),
          'sparkline': sparkline.toString(),
        });
    final List<dynamic> jsonResponse =
        json.decode(response.body) as List<dynamic>;
    final List<Map<String, dynamic>> jsonList =
        jsonResponse.map((dynamic d) => d as Map<String, dynamic>).toList();

    return jsonList
        .map((Map<String, dynamic> json) => _coinDtoFactory.create(json))
        .toList();
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

  Future<List<CoinDto>> getTrendingCoins() async {
    final http.Response response = await _getRequest(baseUrl, trendingCoinsUrl);
    final Map<String, dynamic> jsonResponse =
        json.decode(response.body) as Map<String, dynamic>;
    final List<dynamic> trendingCoinsData =
        jsonResponse['coins'] as List<dynamic>;
    print(trendingCoinsData);

    final List<Map<String, dynamic>> jsonList = trendingCoinsData
        .map((dynamic d) =>
            (d as Map<String, dynamic>)['item'] as Map<String, dynamic>)
        .toList();

    return jsonList
        .map((Map<String, dynamic> json) => _coinDtoFactory.create(json))
        .toList();
  }

  Future<List<CoinDto>> getSearchResult(String query) async {
    final http.Response response = await _getRequest(
      baseUrl,
      searchCoinsUrl,
      queryParams: <String, String>{
        'query': query,
      },
    );
    final Map<String, dynamic> jsonResponse =
        json.decode(response.body) as Map<String, dynamic>;
    print(jsonResponse['coins']);
    final List<dynamic> trendingCoinsData =
        jsonResponse['coins'] as List<dynamic>;

    final List<Map<String, dynamic>> jsonList = trendingCoinsData
        .map((dynamic d) => d as Map<String, dynamic>)
        .toList();

    return jsonList
        .map((Map<String, dynamic> json) => _coinDtoFactory.create(json))
        .toList();
  }

  Future<http.Response> _getRequest(String baseUrl, String path,
      {Map<String, String>? headers, Map<String, String>? queryParams}) async {
    try {
      final List<InternetAddress> result =
          await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
      }
    } on SocketException catch (_) {
      print('not connected');
    }
    return http.get(
        Uri.parse(
          Uri.https(baseUrl, path, queryParams ?? <String, String>{})
              .toString(),
        ),
        headers: headers);
  }

  // ignore: unused_element
  Future<http.Response> _postRequest(String baseUrl, String path,
      {Map<String, String>? headers, Map<String, String>? queryParams}) {
    return http.post(
        Uri.parse(
          Uri.https(baseUrl, path).toString(),
        ),
        headers: headers,
        body: queryParams);
  }
}
