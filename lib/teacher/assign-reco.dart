import 'package:flutter/material.dart';

class assigntwo extends StatelessWidget {
  const assigntwo({super.key});

  @override
  Widget build(BuildContext context) {
    var no =['1','2','3','4','5','6','7','8'];
    var studname =['Anu','Anusha','Bablu','Bavi','Chinju','Chithu','Deepa','Dileep'];
    var status =['Status','Status','Status','Status','Status','Status','Status','Status'];
    var stsub =['Submitted','Submitted','Not Submitted','Not Submitted','Submitted','Submitted','Submitted','Submitted'];
    return Scaffold(
      body: ListView.builder(itemCount: no.length,
        itemBuilder: (context,index){
      return ListTile(
        title: Text(no[index]),
        subtitle: Text(studname[index]),
        trailing: Column(
          children: [
            Text(status[index]),
            Text(stsub[index])
          ],
        )
      );
      }
      ),

    );
  }
}