import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class trevent extends StatefulWidget {
  const trevent({super.key});
  

  @override
  State<trevent> createState() => _eventState();
}

class _eventState extends State<trevent> {
  DateTime today = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Events")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              focusedDay: today,
              firstDay: DateTime.utc(2010,10,16),
              lastDay:DateTime.utc(2030,3,14) ,
              onPageChanged: (focusedDay) {
              focusedDay = focusedDay;
              
},
             // calendarController: _calendarController,
            ),
            SizedBox(height: 20),
            // Add more widgets or functionalities as needed
          ],
        ),
      ),
    );
  }
}