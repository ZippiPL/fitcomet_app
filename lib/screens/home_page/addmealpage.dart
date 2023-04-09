import 'package:fitcomet_app/routesclass.dart';
import 'package:fitcomet_app/screens/home_page/homepage.dart';
import 'package:fitcomet_app/screens/login_page/widgets/imputfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../login_page/widgets/classicbutton.dart';

class AddMealPage extends StatelessWidget {
  const AddMealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 231, 231),
      appBar: _appBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        //child: (
        child: Column(children: [
          Text("Add Meal",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.amber[300],
              )),
          ImputField(title: "Meal name", hint: "Enter Meal name Here"),
          ImputField(title: "Protein", hint: "Enter How Many Protein in meal"),
          ImputField(title: "Carbs", hint: "Enter How Many Carbs in meal"),
          ImputField(title: "Fat", hint: "Enter How Many Fat in meal"),
          ImputField(title: "Kcal", hint: "Enter How Many Kcal in meal"),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Text(
                  "BarCode",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(90, 24, 154, 1),
                  ),
                ),
                Center(
                  child: Text(
                    " Scan to add barcode",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.amber,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Center(child: Icon(Icons.qr_code_scanner_sharp))),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: ClassicButton(
              label: "Add",
              onTap: null,
            ),
          ),
        ]),
      ),
      // ),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Get.to(() => HomePage());
        },
        child: Icon(Icons.arrow_back),
      ),
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
