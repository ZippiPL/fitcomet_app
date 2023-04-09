import 'package:fitcomet_app/screens/login_page/widgets/classicbutton.dart';
import 'package:fitcomet_app/screens/login_page/widgets/gymsquare.dart';
import 'package:flutter/material.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(132, 36, 228, 1),
        body: Column(
          children: [
            Visibility(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(109, 109, 110, 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Nacisnij, aby zeskanowac pierwszy produkt",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(

                              child: Text('Skanuj',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),),
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    '/addexcersisetoplanpage', (_) => false);
                                    print('mealpage');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(109, 109, 110, 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Nacisnij, aby wprowadzic pierwszy produkt",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(

                              child: Text('Wprowadz',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),),
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    '/addmealpage', (_) => false);
                                    print('mealpage');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
