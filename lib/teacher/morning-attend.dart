import 'package:flutter/material.dart';

class morningtab extends StatelessWidget {
  const morningtab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 240, 239, 239),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: MediaQuery.of(context).size.height/15,
                  width: double.infinity,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white,),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/25,
                    ),
                    Text("1",style: TextStyle(fontSize: 16),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/10,
                    ),
                    Text("Amal",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)
                     ,SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                       radius: 19,
                      child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text("P"),
                      ),
                    ), SizedBox(
                      width: MediaQuery.of(context).size.width/25,
                    ),

                    Container(
                      width: 1,
                      height: MediaQuery.of(context).size.height/20,
                      color: Color.fromARGB(255, 165, 164, 164),
                    ), SizedBox(
                      width: MediaQuery.of(context).size.width/25,
                    ),
                     CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 19,
                      child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text("A"),
                      ),
                    )
                  ],
                 ),
                ),
              );
            },)
           , Padding(
             padding: const EdgeInsets.all(15),
             child: Container(
                height: MediaQuery.of(context).size.height/15,
                width: MediaQuery.of(context).size.width/2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 197, 148, 4),
                  
                ),
                child: Center(child: Text("Submit",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),)),
              ),
           ),
            SizedBox(
              height: MediaQuery.of(context).size.height/15,
            )
          ],
        ),
      )
    );
  }
}

      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 244, 246, 248),
      //   automaticallyImplyLeading: false,
      //   title: SizedBox(
      //     height: 37,
      //     child: Row(
      //       children: [
      //         IconButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           icon: Icon(Icons.arrow_back_ios),
      //           color: Color.fromARGB(255, 21, 16, 16),
      //         ),
              
      //         SizedBox(width: 30),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //       child: Row(
      //         children: [
              
            
      //         ],
      //       ),
      //     ),
      //     SizedBox(height: 20),
          
        
      //     SizedBox(height: 10),
      //     Expanded(
      //       child: ListView.builder(
      //         itemCount: 10, // Adjust the number of items as needed
      //         itemBuilder: (context, index) {
      //           return  Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //             child: Card(
      //               elevation: 3,
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(15),
      //               ),
      //               child: ListTile(
                      
      //                  title: Text('Malavika Raj '),
      //                 trailing: Row(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     IconButton(
      //                       onPressed: () {
      //                         // Handle present button tap
      //                       },
      //                       icon: Icon(Icons.check_circle_outline),
      //                       color: Colors.green,
      //                     ),
      //                     IconButton(
      //                       onPressed: () {
                              
      //                       },
      //                       icon: Icon(Icons.cancel_outlined),
      //                       color: Colors.red,
      //                     ),
      //                   ],
      //                 ),
      //             onTap: () {
      //               // Handle list item tap
      //             },
      //               ))
      //           );
      //         },
      //       ),
      //     ),
      //     SizedBox(
      //       height: 30,
      //     ), 
      //     // Align(alignment: Alignment.bottomCenter,),
        
      //     Align(alignment: Alignment.bottomCenter,),
      //              Center(
      //                child: Container(
      //                    height: 30,
      //                    width: 300,
      //                    decoration: BoxDecoration(
      //                      border: Border.all(),color: Colors.blue
      //                    ),
      //                                child:ElevatedButton( style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15),backgroundColor: Colors.blue),
                               
      //                       onPressed: (){}, child: Text("Save"))
      //                       ),
      //              ) ],
        
//       ),
//     );
//   }
// }













// import 'package:flutter/material.dart';

// class morningtab extends StatefulWidget {
//   const morningtab({super.key});

//   @override
//   State<morningtab> createState() => _morningtabState();
// }

// class _morningtabState extends State<morningtab> {
//   @override
//   Widget build(BuildContext context) {
//     var no =['1','2','3','4','5','6','7','8'];
//     var studname =['Anu','Anusha','Bablu','Bavi','Chinju','Chithu','Deepa','Dileep'];
//      var Color1=[Colors.green];
//      var color2=[Colors.red];
//     return Scaffold(
//       body: ListView.builder(itemCount: no.length,
//         itemBuilder: (context,index){
//         return ListTile(
//           leading: Text(no[index]),
//           title: Text(studname[index]),
//           trailing: IntrinsicHeight(
//             child: Wrap(
//              children: [
//                 ElevatedButton(onPressed: (){
//                 setState(() {
                  
//                 });
//                 }, child: Text('P'),
//                 style: ButtonStyle(shape: MaterialStatePropertyAll(CircleBorder()),
//                 overlayColor: MaterialStatePropertyAll(Colors.green),
//                 )
//                 ),
//                Container(width: 2,height: 27, color: Colors.black26,),
               //   ElevatedButton(onPressed: (){}, child: Text('A'),
//                 style: ButtonStyle(shape: MaterialStatePropertyAll(CircleBorder()))
//                  ),
                 
//               ],
//                      ),
//           ),
          
//         );
//       }
      
//       ),

//     );
//   }
// }
