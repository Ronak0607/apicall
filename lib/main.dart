
import 'package:apicall/Screen/View/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => HomeScreen()},
  ));
}
