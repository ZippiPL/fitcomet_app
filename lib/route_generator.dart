import 'package:fitcomet_app/screens/home_page/homepage.dart';
import 'package:fitcomet_app/screens/login_page/loginpage.dart';
import 'package:fitcomet_app/screens/login_page/registeractivitypage.dart';
import 'package:fitcomet_app/screens/login_page/registerdetailpage.dart';
import 'package:fitcomet_app/screens/login_page/registerpage.dart';
import 'package:fitcomet_app/screens/login_page/registeruserdatapage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case '/loginpage':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/registerpage':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/registerdetailpage':
        return MaterialPageRoute(builder: (_) => RegisterDetailPage());
      case '/registeractivitypage':
        return MaterialPageRoute(builder: (_) => RegisterActivityPage());
      case '/registeruserdatapage':
        return MaterialPageRoute(builder: (_) => RegisterUserDataPage());
      case '/homepage':
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text('Error')),
      );
    });
  }
}
