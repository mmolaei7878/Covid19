import 'package:get/get.dart';

class DashBoardController extends GetxController {
  int currentIndex = 0;
  changeIndex(int value) {
    currentIndex = value;
    update();
  }
}
