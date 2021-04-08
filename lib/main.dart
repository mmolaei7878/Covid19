import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Routes/AppPages.dart';
import 'Routes/AppRoutes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil().init(constraints, orientation);
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Color(0xff0A93F1),
            textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          initialRoute: AppRoutes.DASHBOARD,
          getPages: AppPages.list,
        );
      });
    });
  }
}
