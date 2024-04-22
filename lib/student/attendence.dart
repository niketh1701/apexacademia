import 'package:flutter/material.dart';

class attendence extends StatelessWidget {
  const attendence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title:Text ("Leave & Attendence")),
     body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20,top: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 142, 140, 140),
                          radius: 11,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 13,
                            ),
                          ),
                        ),
                         SizedBox(
                      width: MediaQuery.of(context).size.width / 35,
                    ),
                    Text(
                      "Feb-2024",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(248, 255, 238, 161),
                child: Center(
                  child: Text(
                    'Container 1',
                    style: TextStyle(color:Colors.black),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(248, 255, 238, 161),
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(color:Colors.black),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(248, 255, 238, 161),
                child: Center(
                  child: Text(
                    'Container 3',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        ExpansionTile(title: Text('My Calendar'),
        children: [
          

        ],
        ),
         ExpansionTile(title: Text('Apply Leave')),
          ExpansionTile(title: Text('Upcoming Holidays')),

      ],
  

     ),
    );
  }
}