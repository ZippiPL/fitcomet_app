import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(237, 242, 244, 1),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.amber[300],
            size: 30,
          ),
          title: Text(
            'FitComet',
            style: TextStyle(color: Colors.amber[300], fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(90, 24, 154, 1),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Wybierz swoj cel : ',
              style: TextStyle(color: Color.fromRGBO(90, 24, 154, 1), fontSize: 35.0),
            ),
            SizedBox(
              height: 50,
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Wrap(
                direction: Axis.vertical,
                spacing: 30,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(90, 24, 154, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      debugPrint(
                          'Redukcja Masy Ciala'); //dodac funkcje autoryzacjci
                      Navigator.of(context).pushNamed('/registerdetailpage');
                    },
                    child: Text(
                      'Redukcja Masy Ciala',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(90, 24, 154, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      debugPrint(
                          'Zwiekszenie Masy Ciala'); //dodac funkcje autoryzacjci
                      Navigator.of(context).pushNamed('/registerdetailpage');
                    },
                    child: Text(
                      'Zwiekszenie Masy Ciala',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(90, 24, 154, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                    onPressed: () {
                      debugPrint(
                          'Utrzymanie Masy Ciala'); //dodac funkcje autoryzacjci
                      Navigator.of(context).pushNamed('/registerdetailpage');
                    },
                    child: Text(
                      'Utrzymanie Masy Ciala',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                    height: 150,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.fill,
                    )),
              ),
            ]),
          ],
        )));
  }
}
