import 'package:apexacademia/teacher/afternoon-attend.dart';
import 'package:apexacademia/teacher/morning-attend.dart';
import 'package:flutter/material.dart';

class trattendence extends StatelessWidget {
  const trattendence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text('Attendence'),
      ),
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Morning'),
                Tab(text: 'Afternoon'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                 morningtab(),
                 afternoontab()
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}