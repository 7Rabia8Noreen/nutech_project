import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nutech/models/province_class.dart';

import '../models/country_class.dart';
import '../networks/api_service.dart';
import '../networks/network_client.dart';

class ProvinceProvider with ChangeNotifier {
  ApiService apiService = ApiService(networkClient: NetworkClient());
  List<DropdownMenuItem<Province>> provinces = [];

  Future<void> getProvincesFromAPI() async {
    final result = await apiService.getProvincesFromAPI();
    Map<String, dynamic> mp = jsonDecode(result.toString());

    provinces = (mp['data'] as List).map((e) {
      Province province = Province.fromJson(e);

      return DropdownMenuItem<Province>(
        value: province,
        child: Text(province.name),
      );
    }).toList();
    notifyListeners();
  }
}
