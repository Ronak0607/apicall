import 'package:apicall/Screen/Model/Modeldata.dart';
import 'package:apicall/Screen/controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("ApiCall"),
      ),
      body: FutureBuilder<Modeldata>(
          future: homeController!.apiCalling(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              Text("${snapshot.hasError}");
            } else if (snapshot.hasData)
            {
              Modeldata modeldata = snapshot.data!;

              return ListView.builder(
                  itemCount: modeldata.articles!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${modeldata.articles![index].title}"),
                    );
                  });
            }
            return Center(child: CircularProgressIndicator());
          }),
    ));
  }
}
