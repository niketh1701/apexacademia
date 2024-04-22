import 'package:apexacademia/student/bottomnavigat.dart';
import 'package:apexacademia/student/home.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool value1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(child:SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text("Apex Academia",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            )),
            Center(child: Text("Log into your account",
            style: TextStyle(fontSize: 22))),
            Padding(
              padding: const EdgeInsets.only(top: 50,bottom: 30,left: 10,right: 10),
              
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Academy Id")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password")
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(value:value1, onChanged: (newvalue)  {
                  setState(() {
                    value1=newvalue!;
                  });
                }),
                Text("Show password"),
                Spacer(),
               TextButton(onPressed: (){}, child: Text("Forgot password"))
              ],
            ),
            SizedBox(width: double.infinity,
            height: 75,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 25),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnav()));
                  }, child: Text("Login",
                  style: TextStyle(fontSize: 16,color: Colors.black)),
                  style: ElevatedButton.styleFrom( foregroundColor: Colors.amber,backgroundColor: const Color.fromARGB(255, 215, 175, 12),
                    shape: RoundedRectangleBorder())
                  )),
              ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Need Help"),
                      
                      ElevatedButton(
                  onPressed: (){}, child: Text("Contact Us",))
                    ],
                  ),
                )
          ],
        ),
      )
      )
     
    );
  }
}