import 'package:flutter/material.dart';

class verify extends StatelessWidget {
  const verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Melvin Philip'),
              subtitle: Text('melvinphilip123@gmail.com'),
              trailing: Image.asset('assets/images/Ellipse 442.png'),
            ),
             Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          'Changes with Administer Validation',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: SizedBox(
                        width: 170,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Title')),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 170,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('First Name')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(
                            width: 170,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Last Name')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 170,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('DOB')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(
                            width: 170,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Gender')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 170,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Nationality')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SizedBox(
                            width: 170,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Blood Group')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              Padding(
                          padding: const EdgeInsets.only(left: 15,top: 30),
                          child: SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Verify',
                                    style: TextStyle(color: Colors.black)),
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    backgroundColor: MaterialStatePropertyAll(
                                        const Color.fromARGB(
                                            255, 215, 175, 12)))),
                          ),
                        )
          ]
        )
      )
    );
  }
}