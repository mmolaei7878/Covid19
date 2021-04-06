import 'package:covid19/Model/AllCasesModel.dart';
import 'package:covid19/Services/AllCasesRepository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final repo = AllCasesRepository();
  var allcases = AllCasesModel().obs;
  var isLoading = true.obs;
  getallcases() async {
    isLoading(true);
    final newallcases = await repo.getAllCases();
    allcases.value = newallcases;
    isLoading(false);
  }

  @override
  void onInit() {
    getallcases();
    super.onInit();
  }
}
