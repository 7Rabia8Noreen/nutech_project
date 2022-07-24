import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../models/city.dart';
import '../models/country_class.dart';
import '../networks/api_service.dart';
import '../networks/network_client.dart';

class CityProvider with ChangeNotifier {
  ApiService apiService = ApiService(networkClient: NetworkClient());
  List<DropdownMenuItem<City>> cities = [];

  Future<void> getCitiesFromAPI(int provinceId) async {
    final result = await apiService.getCitiesFromAPI(provinceId);
    Map<String, dynamic> mp = jsonDecode(result.toString());

    cities = (mp['data'] as List).map((e) {
      City city = City.fromJson(e);

      return DropdownMenuItem<City>(
        value: city,
        child: Text(city.name),
      );
    }).toList();
    notifyListeners();
  }
}
