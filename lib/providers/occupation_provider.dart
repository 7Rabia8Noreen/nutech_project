import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nutech/models/occupation.dart';
import '../networks/api_service.dart';
import '../networks/network_client.dart';

class OccupationProvider with ChangeNotifier {
  ApiService apiService = ApiService(networkClient: NetworkClient());
  List<DropdownMenuItem<Occupation>> _occupations = [];

  /* DropdownMenuItem<Country>(
        child: const Text('Pakistan'),
        value: Country(id: 1, name: 'Pakistan'),
      );*/

  get occupations {
    return _occupations;
  }

  Future<void> getOccupationsFromAPI() async {
    final result = await apiService.getOccupationsFromAPI();
    Map<String, dynamic> mp = jsonDecode(result.toString());

    _occupations = (mp['data'] as List).map((e) {
      Occupation occupation = Occupation.fromJson(e);

      return DropdownMenuItem<Occupation>(
        value: occupation,
        child: Text(occupation.name),
      );
    }).toList();
    notifyListeners();
  }
}
