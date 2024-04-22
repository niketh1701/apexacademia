import 'package:apexacademia/student/assignments.dart';
import 'package:apexacademia/student/lab.dart';
import 'package:flutter/material.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();

}
// int indexnum2 = 0;
// List tabwidgets2 = [
//   assign(),
//   lab()
// ];

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      
        title: Text('social'),
      ),
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Assignment'),
                Tab(text: 'Lab'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  sAssignmentsub(),
                  labpage()
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}