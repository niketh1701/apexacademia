import 'package:flutter/material.dart';

class studentdetails extends StatefulWidget {
  String title1;
  String Firstname1;
  String Lastname1;
  String DOB1;
  String Gender1;
  String Placeofbirth1;
  String State1;
  String Height1;
  String Weight1;
  String Religion1;
  String Caste1;
  String Nationality1;
  String Bloodgroup1;
  String Email1;
  String Mothertongue1;
   studentdetails({required this.title1,required this.Firstname1,required this.Lastname1,required this.DOB1,
   required this.Gender1,required this.Placeofbirth1,required this.State1,required this.Height1,
   required this.Weight1,required this.Religion1,required this.Caste1,required this.Nationality1,
   required this.Bloodgroup1,required this.Email1,required this.Mothertongue1 });

  @override
  State<studentdetails> createState() => _studentdetailsState();
}

class _studentdetailsState extends State<studentdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Student Details'),),
      body: Column(children: [
        ListTile(
              title: Text("Melvin Philip",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text(
                "melvinphilip1001@gmail.com",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Image.asset('assets/images/Ellipse 442.png'),
            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 30),
                            child: Row(children: [
                              Container(width: 50,
                                child: Text('Title')),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Container(child: Text(widget.title1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('First Name')),
                              Padding(
                                padding: const EdgeInsets.only(left: 48),
                                child: Container(child: Text(widget.Firstname1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('Last Name')),
                              Padding(
                                padding: const EdgeInsets.only(left: 48),
                                child: Container(child: Text(widget.Lastname1)),
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
                                  child: Text(widget.DOB1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                            child: Row(children: [
                              Container(child: Text('Gender')),
                              Padding(
                                padding: const EdgeInsets.only(left: 68),
                                child: Container(child: Text(widget.Gender1)),
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
                                  child: Text(widget.Nationality1)),
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
                                child: Container(child: Text(widget.Bloodgroup1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Place of Birth')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.Placeofbirth1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('State of Birth')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.State1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Height')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.Height1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Weight')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.Weight1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Mother Tongue')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.Mothertongue1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Caste')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.Caste1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Email')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.Email1)),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(children: [
                              Container(child: Text('Religion')),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(child: Text(widget.Religion1)),
                              )
                            ]),
                          ),
    ])
    );
  }
}