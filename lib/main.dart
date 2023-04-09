
import 'package:fitcomet_app/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(FitCometApp(),);
  }
  
  class FitCometApp extends StatelessWidget{
  const FitCometApp({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'FitCommet', initialRoute: '/',onGenerateRoute: RouteGenerator.generateRoute,);
  }
}