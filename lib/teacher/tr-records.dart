import 'package:apexacademia/teacher/tabbar-reco.dart';
import 'package:flutter/material.dart';

class trrecords extends StatelessWidget {
  const trrecords({super.key});

  @override
  Widget build(BuildContext context) {
    var sub=
    [
      "English","Malayalam",
      "Social","Science"
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Records"),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,crossAxisSpacing: 20,mainAxisSpacing: 2,mainAxisExtent: 150),
         itemBuilder: (context,index){
          return InkWell(onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>tabbartwo()));
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