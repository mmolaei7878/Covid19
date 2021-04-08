import 'package:covid19/Model/MyCountryModel.dart';
import 'package:dio/dio.dart';

class MyCountryRepository {
  Future getMyCountry(String country) async {
    try {
      final response = await Dio().get(
          'https://corona.lmao.ninja/v2/countries/$country?yesterday&strict&query%20%27');
      print(response.data);
      return MyCountryModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
  }
}
