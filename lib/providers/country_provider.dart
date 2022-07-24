import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../models/country_class.dart';
import '../networks/api_service.dart';
import '../networks/network_client.dart';

class CountryProvider with ChangeNotifier {
  ApiService apiService = ApiService(networkClient: NetworkClient());
  List<DropdownMenuItem<Country>> _countries = [];

  /* DropdownMenuItem<Country>(
        child: const Text('Pakistan'),
        value: Country(id: 1, name: 'Pakistan'),
      );*/

  get country {
    return _countries;
  }

  Future<void> getCountriesFromAPI() async {
    final result = await apiService.getCountriesFromAPI();
    Map<String, dynamic> mp = jsonDecode(result.toString());

    _countries = (mp['data'] as List).map((e) {
      Country country = Country.fromJson(e);

      return DropdownMenuItem<Country>(
        value: country,
        child: Text(country.name),
      );
    }).toList();
    notifyListeners();
  }
}
