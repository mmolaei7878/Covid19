import 'dart:ui';

import 'package:covid19/Services/MyCountryRepository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyCountryController extends GetxController {
//
  String imageUrl;
  String countryname;
  final repository = MyCountryRepository();
  var dataMap = {
    "Today Cases": 0.0,
    "Today Deaths": 0.0,
    "Today Recovered": 0.0,
  };

  getMyCountryss(String cn) async {
    try {
      final country = await repository.getMyCountry(cn);
      imageUrl = country.flag['flag'];
      countryname = country.countryname;
      dataMap = {
        "Today Cases": country.todayCases.toDouble(),
        "Today Deaths": country.todayDeaths.toDouble(),
        "Today Recovered": country.todayRecovered.toDouble(),
      };
    } catch (e) {
      Get.showSnackbar(GetBar(
        duration: Duration(seconds: 3),
        isDismissible: true,
        margin: EdgeInsets.all(10),
        animationDuration: Duration(seconds: 1),
        backgroundColor: Color(0xff191919),
        padding: EdgeInsets.all(10),
        borderRadius: 10.0,
        message: 'There Is No Country With This Name',
      ));
    }
    update();
  }
}
