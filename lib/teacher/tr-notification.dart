import 'package:apexacademia/teacher/verify.dart';
import 'package:flutter/material.dart';

class notifictr extends StatelessWidget {
  const notifictr({super.key});

  @override
  Widget build(BuildContext context) {
    var img=["assets/images/avatarAndSubjectContainer.png","assets/images/avatarAndSubjectContainer.png"
    ,"assets/images/avatarAndSubjectContainer.png","assets/images/avatarAndSubjectContainer.png",
    "assets/images/avatarAndSubjectContainer.png","assets/images/avatarAndSubjectContainer.png",
    "assets/images/avatarAndSubjectContainer.png","assets/images/avatarAndSubjectContainer.png",
    ];
    var img2=["assets/images/post.png","assets/images/post.png","assets/images/post.png",
    "assets/images/post.png","assets/images/post.png","assets/images/post.png",
    "assets/images/post.png","assets/images/post.png"
    ];
    var notftxt=[
      "Profile Verification","Project Submitted","Attendence Low","Public exam date published","Attendence Low",
      "Attendence Low","Attendence Low","Attendence Low"
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: ListView.builder(itemCount: notftxt.length,
        itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.only(left: 15,top: 20,right: 15),
          child: ListTile(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => verify()));
          },
            leading:Image.asset(img[index]),
            title: Text(notftxt[index]),
            trailing: Image.asset(img2[index]),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        );
      }),
    );
  }
}