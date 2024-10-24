import 'dart:convert';
import 'dart:io';

import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/backbone/rest_api_urls.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/data/model/global_data.dart';
import 'package:http/http.dart' as http;

class RestGateway {
  final Factory<CoinDto, Map<String, dynamic>> _coinDtoFactory;
  final Factory<TrendingCoinDto, Map<String, dynamic>> _trendingCoinDtoFactory;
  final Factory<GlobalDataDto, Map<String, dynamic>> _globalDataDtoFactory;
  RestGateway(
    this._coinDtoFactory,
    this._trendingCoinDtoFactory,
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
    int retryCount = 0;
    const int maxRetries = 3;
    const Duration retryDelay = Duration(seconds: 15);

    while (retryCount < maxRetries) {
      final http.Response response = await http.get(
        Uri.parse(
          Uri.https(baseUrl, path, queryParams ?? <String, String>{})
              .toString(),
        ),
        headers: headers,
      );

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 429) {
        print('Rate limit exceeded. Retrying in 15 seconds...');
        await Future<void>.delayed(retryDelay);
        retryCount++;
      } else {
        throw HttpException(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    }

    throw const HttpException('Exceeded max retries due to rate limit');
  }

  Future<List<TrendingCoinDto>> getTrendingCoins(String url) async {
    final http.Response response = await _getRequest(baseUrl, url);
    final Map<String, dynamic> jsonResponse =
        json.decode(response.body) as Map<String, dynamic>;
    final List<dynamic> trendingCoins = jsonResponse['coins'];

    return trendingCoins
        .map((dynamic d) =>
            _trendingCoinDtoFactory.create(d['item'] as Map<String, dynamic>))
        .toList();
  }

  Future<List<TrendingCoinDto>> searchTrendingCoins(String query) async {
    final http.Response response = await _getRequest(
      baseUrl,
      searchCoinUrl,
      queryParams: <String, String>{'query': query},
    );

    final Map<String, dynamic> jsonResponse =
        json.decode(response.body) as Map<String, dynamic>;
    final List<dynamic> coins = jsonResponse['coins'] as List<dynamic>;

    return coins
        .map((dynamic d) =>
            _trendingCoinDtoFactory.create(d as Map<String, dynamic>))
        .toList();
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
