import 'package:covid19/Controller/HomeController.dart';
import 'package:covid19/View/Widgets/CardHomeScreen.dart';
import 'package:covid19/View/Widgets/SmallCardsHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  final HomeController allcasesController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              width: double.infinity,
              height: 26.0.h,
              child: CardHomeScreen(),
            ),
            Container(
              alignment: Alignment.center,
              width: 100.0.w,
              height: 15.0.h,
              child: Text(
                'Total Statistics',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    fontSize: 38),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 100.0.w,
              height: 40.0.h,
              child: Obx(
                () {
                  if (allcasesController.isLoading.value == true) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Wrap(
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
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
