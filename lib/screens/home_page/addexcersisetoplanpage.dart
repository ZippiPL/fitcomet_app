import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddExcersisesPlanPage extends StatelessWidget {
  const AddExcersisesPlanPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(),
    );
  }

   _appBar(){
    return AppBar(
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