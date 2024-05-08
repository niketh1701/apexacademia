

import 'package:apexacademia/student/bottomnavigat.dart';

import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String? storedid;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  void checkLoginCredentials(){
    print('Done');
    DatabaseReference UsersRef = FirebaseDatabase.instance.ref().child('Users').child('student');
   String id ="";
     String password ="";
    setState(() {
    id = usernamecontroller.text;
    password = passwordcontroller.text; 
            print('xxxxxxxxxxxxxxxxxxx $id $password');
    });
    
       UsersRef.onValue.listen((event) {
 
      for (final element in event.snapshot.children) {
        print(event.snapshot.value);
          Map Users = event.snapshot.value as Map;
          var Listmap1 =event.snapshot.value as Map;
          print("hhhhhhhhhhhhhhhhhhhhhhhh $Listmap1");
          String dataname=Users["studentid"];
          String datapassword=Users["password"];
          print('yyyyyyyyyyyyyyyyyyy $datapassword $dataname');
  

          if( datapassword == password && dataname == id){
            print('Login Successfull');
            Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnav()));
          }
          else{
            print("Login Failed");
          }
    
      }

   
    });
  
  
  }
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
              
              child: TextField(controller: usernamecontroller,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Academy Id")
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
              child: TextField(controller: passwordcontroller,
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
                    checkLoginCredentials();
                    print('object');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnav()));
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
class UserModel {
  String? studentid;
  int? password;

  UserModel({this.studentid, this.password});

  UserModel.fromJson(Map<dynamic, dynamic> json) {
    studentid = json['studentid'];
    password = json['password'];
  }

  Map<dynamic, dynamic> toJson() => {
        'studentid': studentid,
        'password': password,
      };
}