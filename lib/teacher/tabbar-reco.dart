import 'package:apexacademia/student/assignments.dart';
import 'package:apexacademia/student/lab.dart';
import 'package:apexacademia/teacher/assign-reco.dart';
import 'package:flutter/material.dart';

class tabbartwo extends StatefulWidget {
  const tabbartwo({super.key});

  @override
  State<tabbartwo> createState() => _tabbarState();

}
// int indexnum2 = 0;
// List tabwidgets2 = [
//   assign(),
//   lab()
// ];

class _tabbarState extends State<tabbartwo> {
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
                  assigntwo(),
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