import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:apexacademia/student/loginpage.dart';
import 'package:apexacademia/user.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => userselect())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Center(
          child: AnimatedTextKit(
            isRepeatingAnimation: false,
            repeatForever: false,
            animatedTexts:
          [
            TyperAnimatedText("Apex Academia",
            
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              
            ),
            speed: Duration(milliseconds: 100)
            
            )
          
          ]
           ),
        )
    );
  }
}
