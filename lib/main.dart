import 'package:applovin_ads/homepage.dart';
import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'banner.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Map? sdkConfiguration = await AppLovinMAX.initialize(
      "Dpn4O0XRehywPzhFGbBm0HntT3Jzdx3BqiNaVy7x2gbq01ksGLsDZyf2DdIBVLbGWZwnizq4qI5pvcEeMgmiyZ");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kids Learning Game',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage());
  }
}
