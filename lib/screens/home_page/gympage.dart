import 'package:fitcomet_app/screens/login_page/widgets/gymcircles.dart';
import 'package:flutter/material.dart';

import '../login_page/widgets/gymsquare.dart';

class GymPage extends StatelessWidget {
  final List _excersises = [
    'ex1',
    'ex2',
    'ex3',
    'ex4',
    'ex5',
  ];
  final List _dates = [
    'ex1',
    'ex2',
    'ex3',
    'ex4',
    'ex5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(90, 24, 154, 1),
        body: Column(
          children: [
            //dates
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: _dates.length,
                  scrollDirection: Axis.horizontal, 
                  itemBuilder: (context, index) {
                    return GymCircles(
                      child: _dates[index],
                    );
                  }),
            ),

            // Excercise list
            Expanded(
                child: ListView.builder(
                    itemCount: _excersises.length,
                    itemBuilder: (context, index) {
                      return GymSquare(child: _excersises[index]);
                    })),
          ],
        ));
  }
}
