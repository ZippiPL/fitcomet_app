import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:fitcomet_app/screens/login_page/widgets/gymcircles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../login_page/widgets/gymsquare.dart';

class GymPage extends StatelessWidget {

  DateTime _selectedDate = DateTime.now();
  final List _excersises = [
    'ex1',
    'ex2',
    'ex3',
    'ex4',
    'ex5',
  ];
  final List _dates = [
    'ex1',
    'ex2',
    'ex3',
    'ex4',
    'ex5',
  ];
  _addDatePicker(){
    return 
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10,right: 10),
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
              color: Colors.amber[300]
             ),
             dateTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.amber[300]
             ),
             monthTextStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.amber[300]
             ),         
             ),
          
            );
  }

  _addExcersisesContainer(){
    return Expanded(
                child: ListView.builder(
                    itemCount: _excersises.length,
                    itemBuilder: (context, index) {
                      return GymSquare(child: _excersises[index]);
                    }));
  }

  _addFloatingButtonStartWorkout(){
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {  },backgroundColor:Colors.amber ,
          child: Icon(Icons.add),),
          Expanded(child: Container()),
            FloatingActionButton(onPressed: () {  },backgroundColor:Colors.amber ,
          child: Icon(Icons.timer),),
        ],
      ),
    );
  }
  _addTimer(){
    return Container(
      margin: EdgeInsets.only(left: 20,top: 10),
      child: Row(children: [Text("Kliknij Stoper, aby zacząć trening ",style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Colors.amber[300],)),Container(
                margin: EdgeInsets.only(left: 40, right: 10),
                child: Text("Czas: 00:00:00 ",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white),),
              )],));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _addFloatingButtonStartWorkout(),
        backgroundColor: Color.fromRGBO(90, 24, 154, 1),
        body: Column(
          children: [
            //dates
            /*
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: _dates.length,
                  scrollDirection: Axis.horizontal, 
                  itemBuilder: (context, index) {
                    return GymCircles(
                      child: _dates[index],
                    );
                  }),
            ),
            */
            // koniec dates
           
            //new dates
           _addTimer(),
           Padding(
             padding: const EdgeInsets.only(top: 5,),
             child: SizedBox(height: 3,width: MediaQuery.of(context).size.width,child:Container(color: Colors.white) ,),
           ),
            _addDatePicker(),
            Padding(
             padding: const EdgeInsets.only(top: 5,bottom: 5),
             child: SizedBox(height: 3,width: MediaQuery.of(context).size.width,child:Container(color: Colors.white) ,),
           ),
             _addExcersisesContainer(),
            //koniec dates
             // Excercise list
            
          ],
        ));
  }
}
