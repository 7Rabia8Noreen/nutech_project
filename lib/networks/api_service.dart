import 'package:dio/dio.dart';

import 'network_client.dart';

class ApiService {
  // int id = 1;

  late final NetworkClient networkClient;
  Map<String, dynamic> country = {'country_id': 1};
  // Map<String, dynamic> province = {'province_id': 1};

  ApiService({required this.networkClient});

  // ApiService.getProvinceId({required this.id});

  Future<Response> getCurrentPrice() {
    return networkClient.get('v1/bpi/currentprice.json', {});
  }

  Future<Response> getCountriesFromAPI() {
    return networkClient.get('/api/countries', {});
  }

  Future<Response> getProvincesFromAPI() {
    return networkClient.get('/api/provinces', country);
  }

  Future<Response> getOccupationsFromAPI() {
    return networkClient.get('/api/occupations', {});
  }

  Future<Response> getCitiesFromAPI(int provinceId) {
    return networkClient.get('/api/cities', {'province_id': provinceId});
    // return networkClient.get('/api/cities', province);
  }

  Future<Response> signUpToAPI({required Map<String, dynamic> params}) {
    return networkClient.post('/api/signup', params);
    // return networkClient.get('/api/cities', province);
  }

  // Future<Response> getPrayerTiming(
  //     int timeStamp, Map<String, Object> params) async {
  //   return await networkClient.get('/$timeStamp', params);
  // }

}
