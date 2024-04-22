import 'package:apexacademia/student/tabbar-attendence.dart';
import 'package:flutter/material.dart';

class records extends StatelessWidget {
  const records({super.key});

  @override
  Widget build(BuildContext context) {
    var sub=
    [
      "All","English","Malayalam","Mathematics","Physics","Chemistry",
      "Biology","Computer Science","Hindi","Social"
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Records"),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,crossAxisSpacing: 20,mainAxisSpacing: 2,mainAxisExtent: 150),
         itemBuilder: (context,index){
          return InkWell(onTap:(){
           Navigator.push(context, MaterialPageRoute(builder: (context) => tabbar()));
          } ,
            child: Column(
              children: [
                Image.asset("assets/images/records.png"),
                Text(sub[index],style: TextStyle(fontSize: 15),)
              ],
            ),
          );
         },
         itemCount: sub.length,
         )
    );
  }
}