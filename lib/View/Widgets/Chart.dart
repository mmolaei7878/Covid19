import 'package:covid19/Controller/MyCountryController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends GetView<MyCountryController> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: controller.dataMap,
      animationDuration: Duration(milliseconds: 2000),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width - 150,
      colorList: [
        Colors.amber,
        Colors.black,
        Colors.blue,
      ],
      chartType: ChartType.disc,
      centerText: controller.countryname,
      legendOptions: LegendOptions(
        showLegendsInRow: true,
        legendPosition: LegendPosition.bottom,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: true,
        chartValueBackgroundColor: Theme.of(context).primaryColor,
        decimalPlaces: 2,
      ),
    );
  }
}
