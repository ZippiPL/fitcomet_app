import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class RegisterDetailPage extends StatefulWidget {
  const RegisterDetailPage({Key? key}) : super(key: key);

  @override
  State<RegisterDetailPage> createState() => _RegisterDetailPageState();
}

class _RegisterDetailPageState extends State<RegisterDetailPage> {
  int _gender = 3;
  double _agevalue = 18; //zaokraglic
  double _weightvalue = 90; //zaokraglic
  double _heightvalue = 170; //zaokraglic
  final double _maxAge = 99;
  final double _minAge = 10;
  final double _maxHeight = 210;
  final double _minHeight = 99;
  final double _maxWeight = 200;
  final double _minWeight = 30;

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
          actions: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(90, 24, 154, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
                onPressed: () {
                  debugPrint(
                      'Go to Register Activity Page'); //dodac funkcje autoryzacjci
                  Navigator.of(context).pushNamed('/registeractivitypage');
                },
                child: Icon(
                  Icons.done_rounded,
                  color: Colors.amber[300],
                  size: 30,
                )),
          ],
          title: Text(
            'FitComet',
            style: TextStyle(color: Colors.amber[300], fontSize: 30),
          ),
        ),
        backgroundColor: Color.fromRGBO(237, 242, 244, 1),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: () => setState(() => _gender = 0),
                child: _gender == 0
                    ? Image.asset('assets/images/selectedmale.png')
                    : Image.asset('assets/images/blackmale.png'),
              ),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () => setState(() => _gender = 1),
                child: _gender == 1
                    ? Image.asset('assets/images/selectedwomen.png')
                    : Image.asset('assets/images/blackwomen.png'),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Center(
                child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Wrap(direction: Axis.vertical, spacing: 5, children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Wiek : ',
                      style: TextStyle(
                          color: Color.fromRGBO(90, 24, 154, 1), fontSize: 20),
                    ),
                    Text(
                      _agevalue.round().toString(),
                      style: TextStyle(
                          color: Color.fromRGBO(90, 24, 154, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(children: [
                          // buildSidelabel(_minAge),
                          SizedBox(
                            width: 300,
                            child: SfSlider(
                              value: _agevalue,
                              max: _maxAge,
                              min: _minAge,
                              activeColor: Color.fromRGBO(90, 24, 154, 1),
                              inactiveColor: Color.fromRGBO(17, 126, 243, 1),
                              showLabels: true,
                              showTicks: true,
                              interval: 10,
                              thumbShape: SfThumbShape(),
                              onChanged: (value) {
                                setState(() {
                                  _agevalue = value;
                                });
                              },
                            ),
                          ),
                          //  buildSidelabel(_maxAge),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Wzrost : ',
                      style: TextStyle(
                          color: Color.fromRGBO(90, 24, 154, 1), fontSize: 20),
                    ),
                    Text(
                      _heightvalue.round().toString(),
                      style: TextStyle(
                          color: Color.fromRGBO(90, 24, 154, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(children: [
                          //buildSidelabel(_minHeight),
                          SizedBox(
                            width: 300,
                            child: SfSlider(
                              value: _heightvalue,
                              max: _maxHeight,
                              min: _minHeight,
                              activeColor: Color.fromRGBO(90, 24, 154, 1),
                              inactiveColor: Color.fromRGBO(17, 126, 243, 1),
                              showLabels: true,
                              showTicks: true,
                              interval: 20,
                              thumbShape: SfThumbShape(),
                              onChanged: (value) {
                                setState(() {
                                  _heightvalue = value;
                                });
                              },
                            ),
                          ),
                          // buildSidelabel(_maxHeight),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Waga : ',
                      style: TextStyle(
                          color: Color.fromRGBO(90, 24, 154, 1), fontSize: 20),
                    ),
                    Text(
                      _weightvalue.round().toString(),
                      style: TextStyle(
                          color: Color.fromRGBO(90, 24, 154, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(children: [
                          //buildSidelabel(_minWeight),
                          SizedBox(
                            width: 300,
                            child: SfSlider(
                              value: _weightvalue,
                              max: _maxWeight,
                              min: _minWeight,
                              activeColor: Color.fromRGBO(90, 24, 154, 1),
                              inactiveColor: Color.fromRGBO(17, 126, 243, 1),
                              showLabels: true,
                              showTicks: true,
                              interval: 20,
                              thumbShape: SfThumbShape(),
                              onChanged: (value) {
                                setState(() {
                                  _weightvalue = value;
                                });
                              },
                            ),
                          ),
                          //  buildSidelabel(_maxWeight),
                        ]),
                      ],
                    )),
              ]),
            )),
          ],
        ));
  }

  Widget buildSidelabel(double age) => Text(
        age.round().toString(),
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      );
}
