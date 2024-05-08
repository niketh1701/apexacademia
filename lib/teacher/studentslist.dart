import 'package:apexacademia/teacher/studentdetails.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class studlist extends StatefulWidget {

  const studlist({super.key});

  @override
  State<studlist> createState() => _studlistState();
}

class _studlistState extends State<studlist> {
  DatabaseReference databaseReference =
      FirebaseDatabase.instance.ref().child('studentlist');

  List<UserModel2> listData = [];

  @override
  void initState() {
    getDataFromFirebase();
    super.initState();
  }
  void getDataFromFirebase(){
    List< UserModel2>listDa1 = [];
    databaseReference.onValue.listen((event) {
      listDa1.clear();
      listData.clear();
      for (final element in event.snapshot.children) {
        UserModel2 model = UserModel2.fromJson(element.value as Map);
        listDa1.add(model);
      }

      setState(() {
        listData.addAll(listDa1);
        print('OKKKkkkkk   ${listData[0].Firstname} ${listData[1].Firstname}');
        print('OKKKkkkkk   ${listData[2].Firstname} ${listData[3].Firstname}');
      });
    });
  }
  @override
  Widget build(BuildContext context) {
   
    var stimg =[
    "assets/images/studimg.png","assets/images/studimg.png","assets/images/studimg.png",
    "assets/images/studimg.png","assets/images/studimg.png","assets/images/studimg.png",
    "assets/images/studimg.png","assets/images/studimg.png","assets/images/studimg.png",
    "assets/images/studimg.png","assets/images/studimg.png","assets/images/studimg.png",
    "assets/images/studimg.png","assets/images/studimg.png","assets/images/studimg.png",
    "assets/images/studimg.png","assets/images/studimg.png","assets/images/studimg.png",
    "assets/images/studimg.png","assets/images/studimg.png"];
    return Scaffold(
      appBar: AppBar(title: Text('Students')),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,crossAxisSpacing: 5,mainAxisSpacing: 5), 
        itemBuilder: (context, index) {
        return InkWell(onTap: () {
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].title}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Firstname}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Lastname}"); 
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].DOB}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Gender}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Placeofbirth}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].State}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Height}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Weight}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Religion}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Caste}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Nationality}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Bloodgroup}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Email}");
          print("hhhhhhhhhhhhhhhhhhhh ${listData[index].Mothertongue}");
          Navigator.push(context, MaterialPageRoute(builder: (context) => studentdetails(
            title1: listData[index].title!,Firstname1: listData[index].Firstname!,Lastname1: listData[index].Lastname!,
            DOB1: listData[index].DOB!,Gender1: listData[index].Gender!,Placeofbirth1: listData[index].Placeofbirth!,
            State1: listData[index].State!,Height1: listData[index].Height!,Weight1: listData[index].Weight!,
            Religion1: listData[index].Religion!,Caste1: listData[index].Caste!,Nationality1: listData[index].Nationality!,
            Bloodgroup1: listData[index].Bloodgroup!,Email1: listData[index].Email!,Mothertongue1: listData[index].Mothertongue!,
          )));
        },
          child: Column(
          children: [
            CircleAvatar(radius: 30,
            backgroundImage: AssetImage(stimg[index]),),
            Text(listData[index].Firstname!)
          ],
        ));
        
      },
      itemCount: listData.length,)
      
    );
  }
}
class UserModel2 {
  String? title;
  String? Firstname;
  String? Lastname;
  String? DOB;
  String? Gender;
  String? Placeofbirth;
  String? State;
  String? Height;
  String? Weight;
  String? Religion;
  String? Caste;
  String? Nationality;
  String? Bloodgroup;
  String? Email;
  String? Mothertongue;

  UserModel2({this.title, this.Firstname, this.Lastname,this.DOB,this.Gender,this.Placeofbirth,
  this.State,this.Height,this.Weight,this.Religion,this.Caste,this.Nationality,this.Bloodgroup,
  this.Email,this.Mothertongue});

  UserModel2.fromJson(Map<dynamic, dynamic> json) {
    title = json['Title'];
    Firstname = json['First name'];
    Lastname = json['Last name'];
    DOB = json['DOB'];
    Gender = json['Gender'];
    Placeofbirth= json['Place of Birth'];
    State = json['State'];
    Height = json['Height'];
    Weight = json['Weight'];
    Religion = json['Religion'];
    Caste = json['Caste'];
    Nationality = json['Nationality'];
    Bloodgroup = json['Blood Group'];
    Email = json['Email'];
    Mothertongue = json['Mother Tongue'];
  }

  Map<String, dynamic> toJson() => {
        'Title': title,
        'First name': Firstname,
        'Last name': Lastname,
        'DOB': DOB,
        'Gender': Gender,
        'Place of Birth': Placeofbirth,
        'State': State,
        'Height': Height,
        'Weight': Weight,
        'Religion': Religion,
        'Caste': Caste,
        'Nationality': Nationality,
        'Blood Group': Bloodgroup,
        'Email': Email,
        'Mother Tongue': Mothertongue
      };
}

class NewUserModel {
  String? key;
  UserModel2? model;

  NewUserModel({this.key, this.model});
}