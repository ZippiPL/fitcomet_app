import 'dart:async';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:fitcomet_app/screens/home_page/addexcersisetoplanpage.dart';
import 'package:fitcomet_app/screens/login_page/widgets/gymcircles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import '../login_page/widgets/gymsquare.dart';
import 'package:get/get.dart';

class GymPage extends StatefulWidget {
  @override
  State<GymPage> createState() => _GymPageState();
}

class _GymPageState extends State<GymPage> {
  bool _isTimerOn = false;
  String stopertext = "Kliknij Stoper, aby zacząć trening ";
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  final _isHours = true;
  @override
  void dispose() {
    super.dispose();
    _stopWatchTimer.dispose();
  }

  DateTime _selectedDate = DateTime.now();

  final List _excersises = [
    'ex1',
    'ex2',
    'ex3',
    'ex4',
    'ex5',
  ];

  _addDatePicker() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 80,
        initialSelectedDate: DateTime.now(),
        deactivatedColor: Colors.white,
        selectedTextColor: Colors.amber,
        selectionColor: Colors.grey,
        dayTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.amber[300]),
        dateTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.amber[300]),
        monthTextStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.amber[300]),
      ),
    );
  }

  _addExcersisesContainer() {
    return Expanded(
        child: ListView.builder(
            itemCount: _excersises.length,
            itemBuilder: (context, index) {
              return GymSquare(child: _excersises[index]);
            }));
  }

  _addFloatingButtonStartWorkout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Visibility(
                  visible: _isTimerOn,
                  child: FloatingActionButton(
                    heroTag: "fabpause",
                    onPressed: () {
                      setState(() {
                        _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                      });
                    },
                    backgroundColor: Colors.amber,
                    child: Icon(Icons.pause),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Visibility(
                visible: !_isTimerOn,
                child: FloatingActionButton(
                  heroTag: "fabaddex",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/addexcersisetoplanpage', (_) => false);
                  },
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.add),
                ),
              ),
              Expanded(
                  child: Container(
                height: 5,
                width: MediaQuery.of(context).size.width - 80,
              )),
              FloatingActionButton(
                heroTag: "fabtimer",
                onPressed: () {
                  setState(() {
                    _timerFunction();
                  });
                },
                backgroundColor: Colors.amber,
                child: (_isTimerOn) ? Icon(Icons.stop) : Icon(Icons.timer),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _timerFunction() {
    _isTimerOn = !_isTimerOn;
    if (_isTimerOn) {
      setState(() {
        stopertext = "Czas poswiecony na trening";
        _stopWatchTimer.onExecute.add(StopWatchExecute.start);
      });
    } else {
      setState(() {
        stopertext = "Kliknij Stoper, aby zacząć trening ";
        _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
      });
    }
  }

  _addTimer() {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 10),
        child: Row(
          children: [
            Text(stopertext,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.amber[300],
                )),
            Container(
              margin: EdgeInsets.only(left: 40, right: 10),
              child: Row(
                children: [
                  Text(
                    "Czas: ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  StreamBuilder<int>(
                    stream: _stopWatchTimer.rawTime,
                    initialData: _stopWatchTimer.rawTime.value,
                    builder: (context, snapshot) {
                      final value = snapshot.data;
                      final displayTime =
                          StopWatchTimer.getDisplayTime(value, hours: _isHours);

                      return Text(
                        displayTime,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _addFloatingButtonStartWorkout(context),
        backgroundColor: Color.fromRGBO(132, 36, 228, 1),
        body: Column(
          children: [
            _addTimer(),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: SizedBox(
                height: 3,
                width: MediaQuery.of(context).size.width,
                child: Container(color: Colors.white),
              ),
            ),
            _addDatePicker(),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: SizedBox(
                height: 3,
                width: MediaQuery.of(context).size.width,
                child: Container(color: Colors.white),
              ),
            ),
            _addExcersisesContainer(),
          ],
        ));
  }
}
