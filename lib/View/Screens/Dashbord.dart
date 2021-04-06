import 'package:covid19/Controller/DashboardController.dart';
import 'package:covid19/View/Screens/HomeScreen.dart';
import 'package:covid19/View/Screens/MyCountry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.currentIndex,
              children: [
                HomeScreen(),
                MyCountry(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 36,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            onTap: controller.changeIndex,
            currentIndex: controller.currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.flag,
                label: 'My Country',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
