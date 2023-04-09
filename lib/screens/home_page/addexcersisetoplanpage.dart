
import 'package:fitcomet_app/routesclass.dart';
import 'package:fitcomet_app/screens/home_page/homepage.dart';
import 'package:fitcomet_app/screens/login_page/widgets/imputfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../login_page/widgets/classicbutton.dart';

class AddExcersisesPlanPage extends StatelessWidget {
  const AddExcersisesPlanPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 231, 231),
      appBar: _appBar(context),
      body: Container(
        padding:  const EdgeInsets.only(left: 20,right: 20,top: 20),
        //child: SingleChildScrollView(
          child: Column(
            
            children: [
            Text("Add Excersise",style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.amber[300],)),
              ImputField(title: "Excersise Name", hint: "Enter Excersise Name Here"),
              ImputField(title: "Excersise Series", hint: "Enter How Many Series of Excersise you got"),
              ImputField(title: "Excersise Repetitions", hint: "Enter How Many Repetitions in Series"),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: ClassicButton(label: "Add", onTap: null,),
              ),
              
          ]),
        ),
     // ),
    );
  }

   _appBar(BuildContext context){
    return AppBar(
      leading: GestureDetector(onTap: () {
       Get.to(()=>HomePage());
      },
      child: Icon(Icons.arrow_back),),
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
        );
  }
}