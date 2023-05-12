import 'dart:convert';
import 'dart:io';

import 'package:clean_app/assembly/factory.dart';
import 'package:clean_app/backbone/rest_api_urls.dart';
import 'package:clean_app/data/model/coin.dart';
import 'package:clean_app/data/model/coin_info.dart';
import 'package:clean_app/data/model/global_data.dart';
import 'package:clean_app/data/model/searched_coin.dart';
import 'package:http/http.dart' as http;

class RestGateway {
  final Factory<CoinDto, Map<String, dynamic>> _coinDtoFactory;
  final Factory<SearchedCoinDto, Map<String, dynamic>> _searchedCoinDtoFactory;
  final Factory<GlobalDataDto, Map<String, dynamic>> _globalDataDtoFactory;
  final Factory<CoinInfoDto, Map<String, dynamic>> _coinInfoDtoFactory;
  RestGateway(this._searchedCoinDtoFactory, this._coinDtoFactory,
      this._globalDataDtoFactory, this._coinInfoDtoFactory);

  Future<List<CoinDto>> getMarketsCoins(
    String currency,
    String order,
    int pageNumber,
    int perPage,
    String sparkline,
  ) async {
    try {
      final http.Response response = await _getRequest(baseUrl, coinsMarketsUrl,
          queryParams: <String, String>{
            'vs_currency': currency,
            'order': order,
            'page': pageNumber.toString(),
            'per_page': perPage.toString(),
            'sparkline': sparkline.toString(),
          });
      print(response.body);
      final List<dynamic> jsonResponse =
          json.decode(response.body) as List<dynamic>;
      final List<Map<String, dynamic>> jsonList =
          jsonResponse.map((dynamic d) => d as Map<String, dynamic>).toList();
      print('Json list $jsonList');
      return jsonList
          .map((Map<String, dynamic> json) => _coinDtoFactory.create(json))
          .toList();
    } catch (e) {
      throw e.toString();
    }
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

  Future<List<SearchedCoinDto>> getSearchedCoins(String searchQuery) async {
    final http.Response response = await _getRequest(baseUrl, searchDataUrl,
        queryParams: <String, String>{'query': searchQuery},
        headers: <String, String>{'accept': 'application/json'});
    final Map<String, dynamic> json =
        jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> searchDataJson = json['coins'] as List<dynamic>;
    final List<SearchedCoinDto> data = searchDataJson
        .map((dynamic json) =>
            _searchedCoinDtoFactory.create(json as Map<String, dynamic>))
        .toList();
    return data;
  }

  Future<List<SearchedCoinDto>> getTrendingCoins() async {
    final http.Response response = await _getRequest(baseUrl, trendingDataUrl,
        headers: <String, String>{'accept': 'application/json'});
    final Map<String, dynamic> json =
        jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> searchDataJson = json['coins'] as List<dynamic>;

    final List<SearchedCoinDto> data = searchDataJson.map((dynamic json) {
      final Map<String, dynamic> itemJson =
          json['item'] as Map<String, dynamic>;
      return _searchedCoinDtoFactory.create(itemJson);
    }).toList();
    return data;
  }

  Future<CoinInfoDto> getMarketsCoinInfo(String coinId) async {
    final String coinMarketInfoUrl = '$coinsMarketInfo/$coinId';
    final http.Response response = await _getRequest(baseUrl, coinMarketInfoUrl,
        queryParams: <String, String>{
          'sparkline': true.toString(),
        });
    final Map<String, dynamic> jsonResponse =
        json.decode(response.body) as Map<String, dynamic>;
    return _coinInfoDtoFactory.create(jsonResponse);
  }
}
