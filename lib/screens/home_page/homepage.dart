import 'package:fitcomet_app/screens/home_page/gympage.dart';
import 'package:fitcomet_app/screens/home_page/mealspage.dart';
import 'package:fitcomet_app/screens/home_page/messagespage.dart';
import 'package:fitcomet_app/screens/home_page/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  int _selectedIndex= 0;
  

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    GymPage(),
    MealsPage(),
    MessagePage(),
    SettingsPage(),
  ];

  Widget _buildContent(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.amber[300],
            size: 30,
          ),
          backgroundColor: Color.fromRGBO(90, 24, 154, 1),
          centerTitle: true,
          actions: [],
          title: Text(
            'FitComet',
            style: TextStyle(color: Colors.amber[300], fontSize: 30),
          ),
        ),
        bottomNavigationBar: GNav(
          backgroundColor:Color.fromRGBO(90, 24, 154, 1) ,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.amber,
          gap: 3,
          onTabChange: (index){
            _navigateBottomBar(index);
          },
          tabs: const[
          GButton(icon: Icons.fitness_center,
          text: 'Workout',),
          GButton(icon: Icons.bakery_dining_outlined,
          text: 'Meals',),
          GButton(icon: Icons.medication_liquid_rounded,
          text: 'Supplements',),
          GButton(icon: Icons.settings,
          text: 'Settings',)
        ]),
        backgroundColor: Color.fromRGBO(43, 45, 66, 1),
        body: _pages[_selectedIndex],
        );
  }
}
