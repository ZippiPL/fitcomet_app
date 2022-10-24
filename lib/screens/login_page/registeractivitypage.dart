import 'package:flutter/material.dart';

class RegisterActivityPage extends StatefulWidget {
  const RegisterActivityPage({Key? key}) : super(key: key);

  @override
  State<RegisterActivityPage> createState() => _RegisterActivityPageState();
}

class _RegisterActivityPageState extends State<RegisterActivityPage> {
  int activity_lvl = -1;
  int gymactivity_lvl = -1;
  Color c = Colors.white;
  Color a = Color.fromRGBO(17, 126, 243, 1);
  Color colorAssign = Colors.white;

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
                      'Go to Register User Data Page'); //dodac funkcje autoryzacjci
                  Navigator.of(context).pushNamed('/registeruserdatapage');
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
        body: Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor: Color.fromRGBO(90, 24, 154, 1),
            toggleableActiveColor: Color.fromRGBO(17, 126, 243, 1),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Aktywnosc w ciagu dnia:',
                style: TextStyle(
                    color: Color.fromRGBO(90, 24, 154, 1), fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Wrap(
                  children: [
                    ListTile(
                      title: Text("Praca Siedząca"),
                      leading: Radio(
                        value: 1,
                        groupValue: activity_lvl,
                        onChanged: (value) {
                          setState(() {
                            activity_lvl = 1;
                          });
                        },
                        activeColor: Color.fromRGBO(17, 126, 243, 1),
                      ),
                    ),
                    ListTile(
                      title: Text("Mało ruchu"),
                      leading: Radio(
                        value: 2,
                        groupValue: activity_lvl,
                        onChanged: (value) {
                          setState(() {
                            activity_lvl = 2;
                          });
                        },
                        activeColor: Color.fromRGBO(17, 126, 243, 1),
                      ),
                    ),
                    ListTile(
                      title: Text("Ruch Umiarkowany"),
                      leading: Radio(
                        value: 3,
                        groupValue: activity_lvl,
                        onChanged: (value) {
                          setState(() {
                            activity_lvl = 3;
                          });
                        },
                        activeColor: Color.fromRGBO(17, 126, 243, 1),
                      ),
                    ),
                    ListTile(
                      title: Text("Aktywny wypoczynek"),
                      leading: Radio(
                        value: 4,
                        groupValue: activity_lvl,
                        onChanged: (value) {
                          setState(() {
                            activity_lvl = 4;
                          });
                        },
                        activeColor: Color.fromRGBO(17, 126, 243, 1),
                      ),
                    ),
                    ListTile(
                      title: Text("Ciagle w ruchu"),
                      leading: Radio(
                        value: 5,
                        groupValue: activity_lvl,
                        onChanged: (value) {
                          setState(() {
                            activity_lvl = 5;
                          });
                        },
                        activeColor: Color.fromRGBO(17, 126, 243, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Aktywnosc Treningowa:',
                style: TextStyle(
                    color: Color.fromRGBO(90, 24, 154, 1), fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                    onTap: () => setState(() => gymactivity_lvl = 0),
                    child: gymactivity_lvl == 0
                        ? buildGymLvls("1", a)
                        : buildGymLvls("1", c)),
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                    onTap: () => setState(() => gymactivity_lvl = 1),
                    child: gymactivity_lvl == 1
                        ? buildGymLvls("2", a)
                        : buildGymLvls("2", c)),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                    onTap: () => setState(() => gymactivity_lvl = 2),
                    child: gymactivity_lvl == 2
                        ? buildGymLvls("3", a)
                        : buildGymLvls("3", c)),
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                    onTap: () => setState(() => gymactivity_lvl = 3),
                    child: gymactivity_lvl == 3
                        ? buildGymLvls("4", a)
                        : buildGymLvls("4", c)),
              ]),
              SizedBox(
                height: 5,
              ),
              Text(
                activity_desc(gymactivity_lvl),
                style: TextStyle(
                    color: Color.fromRGBO(17, 126, 243, 1), fontSize: 20),
              ),
            ],
          ),
        ));
  }

  Widget buildGymLvls(String text, Color colorAssign) {
    print(text);
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Color.fromRGBO(90, 24, 154, 1)),
        color: colorAssign,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}

String activity_desc(int gymactivityLvl) {
  switch (gymactivityLvl) {
    case 0:
      return "1-2 Treningi w tygodniu";
    case 1:
      return "3-4 Treningi w tygodniu";
    case 2:
      return "5 Treningów";
    case 3:
      return "6-7 Treningów";
    default:
      return "";
  }
}
