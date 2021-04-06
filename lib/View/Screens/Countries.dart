import 'package:covid19/Controller/DashboardController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Countries extends GetView<DashBoardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Countrires'),
      ),
    );
  }
}
