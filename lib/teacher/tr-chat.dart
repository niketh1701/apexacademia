import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
  var chatname =[ 'Siva','Rahul','anu'];

    return Scaffold(
      appBar: AppBar(title: Text('Chats')),
      body: ListView.builder(itemCount: chatname.length,
        itemBuilder: (context,index){
      return ListTile(
        leading: Image.asset('assets/images/chat.png'),
      );
      }
      ),
    );
  }
}