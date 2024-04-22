import 'package:apexacademia/student/profile.dart';
import 'package:flutter/material.dart';

class studlist extends StatelessWidget {
  const studlist({super.key});

  @override
  Widget build(BuildContext context) {
    var studname =['Melvin','Akhil','Arun','Anoop','Ranjith','Midhun','Hari','Surya','Anjali','Arya',
    'Vidhya','Drishya''Keerthy','Divya','Abin','Sidharth','Sarath','Vishnu','Shruthi','Kavya'];
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
        },
          child: Column(
          children: [
            CircleAvatar(radius: 30,
            backgroundImage: AssetImage(stimg[index]),),
            Text(studname[index]),
          ],
        ));
        
      },
      itemCount: studname.length,)
      // GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      //  crossAxisSpacing: 5,mainAxisSpacing: 5
      // ) , itemBuilder:(context, index) {
      //   return InkWell(onTap: (){
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
      //     CircleAvatar(radius: 20,);
      //     // Column(
      //     //     children: [
      //     //      // Image.asset(stimg[index]),
      //     //     //  Text(studname[index],style: TextStyle(fontSize: 15),)
      //     //     ],
      //     //   );
      //   }); 
      // }, 
      // itemCount: studname.length),
    );
  }
}