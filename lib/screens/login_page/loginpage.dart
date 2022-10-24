import 'package:fitcomet_app/screens/login_page/widgets/inputcustomsignin.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }
}

Widget _buildContent(BuildContext context) {
  return Scaffold(
      backgroundColor: Color.fromRGBO(43, 45, 66, 1),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16.0),
        color: Color.fromRGBO(43, 45, 66, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                'Fit Comet',
                style: TextStyle(
                    color: Color.fromRGBO(249, 194, 46, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 180,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 60,
            ),
            inputCustomSignIn(false, 'Enter Email here!', 'Input Email',
                'Nice email bro', Icons.email),
            SizedBox(
              height: 10,
            ),
            inputCustomSignIn(true, 'Enter Password here!', 'Input Password',
                'Nice password bro', Icons.lock),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(17, 126, 243, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: () {
                    debugPrint('Sign in function'); //dodac funkcje autoryzacjci

                    Navigator.pushNamedAndRemoveUntil(
                        context, '/homepage', (_) => false);
                  },
                  child: Text(
                    'Sign In !',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(43, 45, 66, 1),
                      ),
                      elevation: MaterialStateProperty.all(0)),
                  onPressed: () {
                    debugPrint('Register page route');
                    Navigator.of(context).pushNamed('/registerpage');
                  },
                  child: RichText(
                    text: TextSpan(
                        text: 'New Member ? ',
                        style: TextStyle(
                            color: Color.fromRGBO(17, 126, 243, 1),
                            fontSize: 23),
                        children: [
                          TextSpan(
                              text: ' Sign Up! ',
                              style: TextStyle(
                                  color: Color.fromRGBO(249, 194, 46, 1),
                                  fontSize: 25))
                        ]),
                  )),
            ),
          ],
        ),
      )));
}
