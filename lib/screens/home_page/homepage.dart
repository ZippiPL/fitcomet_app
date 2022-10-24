import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

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
        backgroundColor: Color.fromRGBO(43, 45, 66, 1),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [],
          ),
        ));
  }
}
