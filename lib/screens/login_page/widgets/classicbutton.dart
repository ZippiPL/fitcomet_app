import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClassicButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const ClassicButton(
      {Key? key,
      required this.label,
      required this.onTap,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.amber,),
       
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 168, 7, 255),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
