import 'package:apexacademia/student/editpage.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Melvin Philip",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text(
                "melvinphilip1001@gmail.com",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Image.asset('assets/images/Ellipse 442.png'),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: Text(
                    "Profile Completeness",
                    style: TextStyle(fontSize: 18),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 30),
                child: Container(
                  height: 5,
                  width: double.infinity,
                  color: Color.fromARGB(255, 2, 231, 44),
                )
                ),
            Text("100%"),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Last certified on: 15/03/2024"),
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: BeveledRectangleBorder(),
                child: ExpansionTile(
                  title: Text(
                    'Personal Information',
                    style: TextStyle(),
                  ),
                  children: [
                    ExpansionTile(
                      title: Text('Basic Information'),
                      children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                            child: Row(children: [
                              Container(width: 50,
                                child: Text('Title')),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Container(child: Text('Mr')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('First Name')),
                              Padding(
                                padding: const EdgeInsets.only(left: 48),
                                child: Container(child: Text('Melvin')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('Last Name')),
                              Padding(
                                padding: const EdgeInsets.only(left: 48),
                                child: Container(child: Text('Philip')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('DOB')),
                              Padding(
                                padding: const EdgeInsets.only(left: 87),
                                child: Container(width: 80,
                                  child: Text('28/02/1996')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('Gender')),
                              Padding(
                                padding: const EdgeInsets.only(left: 68),
                                child: Container(child: Text('M')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('Nationality')),
                              Padding(
                                padding: const EdgeInsets.only(left: 43),
                                child: Container(width: 70,
                                  child: Text('Indian')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(
                                child: Text('Blood Group')),
                              Padding(
                                padding: const EdgeInsets.only(left: 33),
                                child: Container(child: Text('O+')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Place of Birth')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text('Palakkad')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('State of Birth')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text('Kerala')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Height')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text('170')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Weight')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text('70')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Mother Tongue')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text('Malayalam')),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Caste')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text('General')),
                              )
                            ]),
                          ),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => edit()));
                          }, child: Text('Edit',style: TextStyle(color: Colors.black),),
                          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 215, 175,12 )),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                          ),
                          )
                        ])
                      ],
                       
                    ),
                    ExpansionTile(
                      title: Text('Contact information'),
                    ),
                    ExpansionTile(title: Text("Address"))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  shape: BeveledRectangleBorder(),
                  child: ExpansionTile(title: Text('Achievements'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: BeveledRectangleBorder(),
                child: ExpansionTile(
                  title: Text('Certificates'),
                  children: [
                    Text('Please Add certificates'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              const Color.fromARGB(255, 215, 175, 12)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)))),
                    )
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'About us',
                    style: TextStyle(fontSize: 17),
                  ),
                )),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Legal',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
