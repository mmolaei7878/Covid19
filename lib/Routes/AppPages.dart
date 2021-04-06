import 'package:covid19/Binding/DashboardBinding.dart';
import 'package:covid19/View/Screens/Countries.dart';
import 'package:covid19/View/Screens/Dashbord.dart';
import 'package:covid19/View/Screens/HomeScreen.dart';
import 'package:covid19/View/Screens/MyCountry.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'AppRoutes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashBoard(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.COUNTRIES,
      page: () => Countries(),
    ),
    GetPage(
      name: AppRoutes.MYCOUNTRY,
      page: () => MyCountry(),
    ),
  ];
}
