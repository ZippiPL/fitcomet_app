import 'package:flutter/material.dart';

class GymCircles extends StatelessWidget {
  final String child;
  GymCircles({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.amber,
        ),
        child: Center(child: Text(child)),
      ),
    );
  }
}
