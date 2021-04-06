import 'package:covid19/Controller/MyCountryController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldSearch extends GetView<MyCountryController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor),
      child: TextField(
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.search,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter Your Country Name',
            hintStyle: Theme.of(context).textTheme.bodyText1),
        onSubmitted: (value) {
          controller.getMyCountryss(value);
        },
      ),
    );
  }
}
