import 'dart:convert';

import 'package:apicall/Screen/Model/Modeldata.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future<Modeldata> apiCalling() async {

    String Apilink =
        "https://newsapi.org/v2/everything?q=tesla&from=2022-11-19&sortBy=publishedAt&apiKey=d230b961382c473f9f014486aabbcd71";


    var jsonString = await http.get(Uri.parse(Apilink));
    var json = jsonDecode(jsonString.body);

    return Modeldata.fromJson(json);

  }
}
