import 'package:fitcomet_app/screens/login_page/widgets/InputCustomSignIn.dart';
import 'package:flutter/material.dart';

class RegisterUserDataPage extends StatefulWidget {
  const RegisterUserDataPage({Key? key}) : super(key: key);

  @override
  State<RegisterUserDataPage> createState() => _RegisterUserDataPage();
}

class _RegisterUserDataPage extends State<RegisterUserDataPage> {
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
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Ostatni Etap Rejestracji ! ',
                style: TextStyle(
                    color: Color.fromRGBO(17, 126, 243, 1), fontSize: 30.0),
              ),
              SizedBox(
                height: 20,
              ),
              inputCustomSignIn(false, 'Enter Email here!', 'Input Email',
                  'Nice email bro', Icons.email),
              SizedBox(
                height: 20,
              ),
              inputCustomSignIn(false, 'Enter Nick here!', 'Input Nick',
                  'Nice nick bro', Icons.person),
              SizedBox(
                height: 20,
              ),
              inputCustomSignIn(true, 'Enter Password here!', 'Input Password',
                  'Nice password bro', Icons.lock),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(90, 24, 154, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    debugPrint(
                        'Function Register'); //dodac funkcje rejestracji i walidacji
                        Navigator.of(context).pushNamed('/loginpage');
                  },
                  child: Text(
                    'Zakończ Rejestracje !',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
