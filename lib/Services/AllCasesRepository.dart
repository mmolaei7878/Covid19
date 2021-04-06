import 'package:covid19/Model/AllCasesModel.dart';
import 'package:dio/dio.dart';

class AllCasesRepository {
  Future<AllCasesModel> getAllCases() async {
    try {
      final response =
          await Dio().get('https://corona.lmao.ninja/v2/all?yesterday');
      print(response.data);
      return AllCasesModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
  }
}
