import 'package:covid19/Controller/MyCountryController.dart';
import 'package:covid19/View/Widgets/Chart.dart';
import 'package:covid19/View/Widgets/Flag.dart';
import 'package:covid19/View/Widgets/TextFieldSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCountry extends StatelessWidget {
  final MyCountryController mycountryController =
      Get.put(MyCountryController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyCountryController>(
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                TextFieldSearch(),
                SizedBox(
                  height: 20,
                ),
                Flag(mycountryController.imageUrl),
                SizedBox(
                  height: 20,
                ),
                mycountryController.countryname == null
                    ? Container()
                    : Text(
                        mycountryController.countryname,
                        style: TextStyle(fontSize: 25),
                      ),
                SizedBox(
                  height: 50,
                ),
                if (mycountryController.dataMap.values.first > 0.0)
                  MyPieChart(),
              ],
            ),
          ),
        );
      },
    );
  }
}
