// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget inputCustomSignIn(bool hidetext, String hintdisplaytext,
    String validatortextwrong, String validatortextpassed, IconData icon) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white),
      height: 50,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Color.fromRGBO(17, 126, 243, 1)),
            width: 45,
            child: Center(
                child: Icon(icon,
                    color: Color.fromRGBO(249, 194, 46, 1), size: 25)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 250,
            color: Colors.white,
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(top: 25, bottom: 10),
              child: TextFormField(
                  obscureText: hidetext,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    iconColor: null,
                    fillColor: null,
                    hoverColor: null,
                    focusColor: null,
                    hintText: hintdisplaytext,
                  ),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return validatortextwrong;
                    }
                    return validatortextpassed;
                  })),
            ),
          ),
        ],
      ));
}
