import 'package:apexacademia/student/attendence.dart';
import 'package:apexacademia/student/events.dart';
import 'package:apexacademia/student/home.dart';
import 'package:apexacademia/student/records.dart';
import 'package:flutter/material.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

int indexnum = 0;
List tabwidgets = [
  home(),
  records(),
  attendence(),
  event()
];

class _bottomnavState extends State<bottomnav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Colors.blue ,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const[
      BottomNavigationBarItem(icon: Icon(Icons.home),
      label: "Home",
      backgroundColor: Colors.blue,
      
      
      )  ,
      BottomNavigationBarItem(icon: Icon(Icons.menu_book),
      label: "Records",
      backgroundColor: Colors.amber
      ),
      BottomNavigationBarItem(icon: Icon(Icons.task_alt),
      label: "Attendence",
      backgroundColor: Colors.red
      ),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_today),
      label: "Events"
      )
      
      ],
      currentIndex:indexnum,
      iconSize: 30,
      onTap: (int index){
        setState(() {
          indexnum=index;

        });
      }

      ),
      body: Center(child:
      tabwidgets.elementAt(indexnum)
      )
    );
  }
}