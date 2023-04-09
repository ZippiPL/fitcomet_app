import 'package:fitcomet_app/screens/home_page/gympage.dart';
import 'package:get/get.dart';
import 'package:fitcomet_app/screens/home_page/gympage.dart';

class RoutesClass{
  static String gympage="/gympage";
  static String getGymPage()=> gympage;

  static List<GetPage> routes =[
    GetPage(page: () =>  GymPage(), name: gympage),
    
  ];
}