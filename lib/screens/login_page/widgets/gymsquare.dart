import 'package:flutter/material.dart';

class GymSquare extends StatelessWidget {
  
  final String child;

  GymSquare({required this.child});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.all(8.0),
        child: Container(height: 200,
        child: Text(child),
        color: Colors.white,),
        );
    
  }
}