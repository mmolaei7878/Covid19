import 'package:covid19/Controller/DashboardController.dart';
import 'package:covid19/Controller/HomeController.dart';
import 'package:covid19/Controller/MyCountryController.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MyCountryController>(() => MyCountryController());
  }
}
