import 'package:covid19/Controller/HomeController.dart';
import 'package:covid19/View/Widgets/CardHomeScreen.dart';
import 'package:covid19/View/Widgets/SmallCardsHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeController allcasesController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: deviceSize.height * 0.01,
          ),
          CardHomeScreen(),
          Container(
            child: Text(
              'Total Statistics',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                  fontSize: 38),
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.050,
          ),
          Expanded(
            child: Obx(() {
              if (allcasesController.isLoading.value == true) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return SingleChildScrollView(
                  child: Wrap(
                    runSpacing: 10.0,
                    spacing: 15.0,
                    children: [
                      SmallCardHomeScreen('Death',
                          '${allcasesController.allcases.value.deaths}'),
                      SmallCardHomeScreen('Active',
                          '${allcasesController.allcases.value.active}'),
                      SmallCardHomeScreen('All Cases',
                          '${allcasesController.allcases.value.cases}'),
                      SmallCardHomeScreen('Recoverd',
                          '${allcasesController.allcases.value.recovered}'),
                      SmallCardHomeScreen('Today Cases',
                          '${allcasesController.allcases.value.todayCases}'),
                      SmallCardHomeScreen('Today Deaths',
                          '${allcasesController.allcases.value.todayDeaths}'),
                      SmallCardHomeScreen('Today Recoverd',
                          '${allcasesController.allcases.value.todayRecovered}'),
                    ],
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
