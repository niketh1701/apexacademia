import 'package:apexacademia/student/home.dart';
import 'package:apexacademia/student/loginpage.dart';
import 'package:apexacademia/teacher/tr-bottomnavi.dart';
import 'package:apexacademia/teacher/tr-loginpage.dart';
import 'package:flutter/material.dart';

class userselect extends StatelessWidget {
  const userselect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text('APEX ACADEMIA',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(child: Text('Select User')),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(height: 50,width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => loginpagetr()));
              }, child: Text('Teacher',style: TextStyle(color: Colors.black),),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 215, 175, 12))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(height: 50,width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => loginpage()));
              }, child: Text('Student',style: TextStyle(color: Colors.black),),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 215, 175, 12))),
                ),
            ),
          ),
        ],
      ),
    );
  }
}