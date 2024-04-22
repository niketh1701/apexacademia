import 'package:apexacademia/student/extras.dart';
import 'package:apexacademia/student/notification.dart';
import 'package:apexacademia/student/profile.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  ScrollController _scrollViewController = ScrollController();
  bool _showAppbar = true;
  bool isScrollingDown = false;
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }
  var dailypics =['assets/images/maths dl.png','assets/images/Physics dl.png','assets/images/social dl.png'];
  var daily = ['Maths','Physics','Social'];
  Widget build(BuildContext context) {
    final List<ChartData1> histogramData = <ChartData1>[
        ChartData1(5.250),
        ChartData1(7.750),
        ChartData1(0.0),
        ChartData1(8.275),
        ChartData1(9.750),
        ChartData1(7.750),
        ChartData1(8.275),
        ChartData1(6.250),
        ChartData1(5.750),
        ChartData1(5.250),
        ChartData1(23.000),
        ChartData1(26.500),
        ChartData1(26.500),
        ChartData1(27.750),
        ChartData1(25.025),
        ChartData1(26.500),
        ChartData1(28.025),
        ChartData1(29.250),
        ChartData1(26.750),
        ChartData1(27.250),
        ChartData1(26.250),
        ChartData1(25.250),
        ChartData1(34.500),
        ChartData1(25.625),
        ChartData1(25.500),
        ChartData1(26.625),
        ChartData1(36.275),
        ChartData1(36.250),
        ChartData1(26.875),
        ChartData1(40.000),
        ChartData1(43.000),
        ChartData1(46.500),
        ChartData1(47.750),
        ChartData1(45.025),
        ChartData1(56.500),
        ChartData1(56.500),
        ChartData1(58.025),
        ChartData1(59.250),
        ChartData1(56.750),
        ChartData1(57.250),
        ChartData1(46.250),
        ChartData1(55.250),
        ChartData1(44.500),
        ChartData1(45.525),
        ChartData1(55.500),
        ChartData1(46.625),
        ChartData1(46.275),
        ChartData1(56.250),
        ChartData1(46.875),
        ChartData1(43.000),
        ChartData1(46.250),
        ChartData1(55.250),
        ChartData1(44.500),
        ChartData1(45.425),
        ChartData1(55.500),
        ChartData1(56.625),
        ChartData1(46.275),
        ChartData1(56.250),
        ChartData1(46.875),
        ChartData1(43.000),
        ChartData1(46.250),
        ChartData1(55.250),
        ChartData1(44.500),
        ChartData1(45.425),
        ChartData1(55.500),
        ChartData1(46.625),
        ChartData1(56.275),
        ChartData1(46.250),
        ChartData1(56.875),
        ChartData1(41.000),
        ChartData1(63.000),
        ChartData1(66.500),
        ChartData1(67.750),
        ChartData1(65.025),
        ChartData1(66.500),
        ChartData1(76.500),
        ChartData1(78.025),
        ChartData1(79.250),
        ChartData1(76.750),
        ChartData1(77.250),
        ChartData1(66.250),
        ChartData1(75.250),
        ChartData1(74.500),
        ChartData1(65.625),
        ChartData1(75.500),
        ChartData1(76.625),
        ChartData1(76.275),
        ChartData1(66.250),
        ChartData1(66.875),
        ChartData1(80.000),
        ChartData1(85.250),
        ChartData1(87.750),
        ChartData1(89.000),
        ChartData1(88.275),
        ChartData1(89.750),
        ChartData1(97.750),
        ChartData1(98.275),
        ChartData1(96.250),
        ChartData1(95.750),
        ChartData1(95.250)
        ];
    var img =[
     "assets/images/social.png",
     "assets/images/social.png",
     "assets/images/social.png"
    ];
    var txt =[
      "social",
      "social",
      "social"
    ];
    var txt2 =[
      "Prepare for the section",
      "Prepare for the section",
      "Prepare for the section"
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Apex Acadamia"),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => notific()));
        }, icon: Icon(Icons.notifications)),
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
        }, icon:Icon(Icons.person) )
      ],
      ),
      body:
      Expanded(
              child: SingleChildScrollView(
                controller: _scrollViewController,
                physics: ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 230, 229, 229),
                                  spreadRadius: 0.2,
                                  blurRadius: 1)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 30),

                              child: Row(
                                children: [ 
                                  Text("Monthly Attendence",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width/5,
                                  ),
                                  Text("<",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                  Text(" sept 2022 "),
                                   Text(">",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                ], 
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width/1.3,),
                                CircleAvatar(backgroundColor: Color.fromARGB(255, 128, 103, 31),
                                radius: 3,),
                                Text("  Avg no.",style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/20,
                            ),
                            

                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: MediaQuery.of(context).size.width/1,
                                height: MediaQuery.of(context).size.height/3,
                                child: SfCartesianChart(series: <CartesianSeries>[
                                  HistogramSeries<ChartData1,double>(
                                    dataSource: histogramData,
                                    showNormalDistributionCurve: true,
                                    curveColor: Color.fromARGB(255,141,116,41),
                                    binInterval: 20,
                                    pointColorMapper: (datum, index) => Color.fromARGB(255,246,215,131),
                                    sortFieldValueMapper: (datum, index) => ValueKey(20),
                                    yValueMapper: (ChartData1 data, _) => data.y
                                    )],
                                    backgroundColor: Colors.white,
                                )
                              )
                            )
                          ])
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "upcoming works",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListView.builder(
                        itemCount: 3,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15,top: 8),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromARGB(255, 218, 218, 218),
                                        spreadRadius: 0.2,
                                        blurRadius: 1)
                                  ]),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: MediaQuery.of(context).size.height / 70,
                                    left: MediaQuery.of(context).size.width / 30,
                                    child: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height / 15,
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(3),
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(30),
                                          child: Image.asset(
                                            "assets/images/social.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top:
                                          MediaQuery.of(context).size.height / 80,
                                      left:
                                          MediaQuery.of(context).size.width / 4.3,
                                      child: Text(
                                        "Social",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 183, 138, 3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Positioned(
                                    left:
                                          MediaQuery.of(context).size.width / 4.3,
                                          top: MediaQuery.of(context).size.height/27,
                                      child: Text(
                                    "Case study project",
                                    style: TextStyle(fontSize: 14),
                                  )),
                                  Positioned(
                                     left:MediaQuery.of(context).size.width / 4.3,
                                          top: MediaQuery.of(context).size.height/17,
                                    child: Text("Prepare for the section",style: TextStyle(fontSize: 11),)),
                                    Positioned(
                                       left:
                                          MediaQuery.of(context).size.width /  1.2,
                                          top: MediaQuery.of(context).size.height/29,
                                      child: Icon(Icons.arrow_circle_right_outlined,
                                      color: const Color.fromARGB(255, 197, 148, 2),size: 30,))
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("Daily learning",style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/4.6,
                      
                      
                      child: ListView.builder(
                      shrinkWrap: true,
                                     
                       scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10,),
                          child: InkWell(
                            onTap: () {
                            //  Navigator.push(context,MaterialPageRoute(builder: (context) => AssignmentChecking(SelectePageindex: 0,),));
                            },
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height/5,
                              width: MediaQuery.of(context).size.width/3.1,
                              child: SizedBox(
                                              
                                child: Card(
                                  color: Colors.black,
                                   child: Stack(
                                    children: [ 
                                       ClipRRect(
                                        borderRadius: BorderRadius.circular(7),
                                        child: SizedBox.fromSize(
                                          size: Size.fromRadius(MediaQuery.of(context).size.width/3.1),
                                          child: Image.asset(
                                            dailypics[index],
                                            fit: BoxFit.cover,
                                            
                                          ),
                                        ),
                                      ),
                                      Container(
                                       height: MediaQuery.of(context).size.height/4.6,
                                       width: MediaQuery.of(context).size.width/3.1
                                       ,decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: LinearGradient(
                                          begin: Alignment.center,
                                          end: Alignment.bottomCenter,
                                          stops: [
                                            .3,
                                            0.5
                                          ],
                                          colors:[Colors.black.withOpacity(0.1),Colors.black.withOpacity(0.6)])
                                       ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        left: MediaQuery.of(context).size.width/14,
                                        child: Text(daily[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),))
                                    ],
                                   ),
                                ),
                              )),
                          ),
                        );
                      },),
                    )
                  ]
                 )
                 )
                 )
                 );
  }
}
class ChartData1 {
        ChartData1(this.y);
        final double y;
    }


                              
                           
                                                    // HistogramSeries<ChartData1, double>(
                                                    // dataSource: histogramData,
                                                    
                                                    // showNormalDistributionCurve: true,
                                                    // curveColor: Color.fromARGB(255, 141, 116, 41),
                                                    // binInterval: 20,
                                                    // pointColorMapper: (datum, index) => Color.fromARGB(255, 246, 215, 131),
                                                    // sortFieldValueMapper: (datum, index) => ValueKey(20),
                                                    // yValueMapper: (ChartData1 data, _) => data.y)
                                                    
                                                    // ,backgroundColor: Colors.white,
                                                    
                           
      //  SingleChildScrollView(
      //    child: Column(
      //     children: [
      //       Container(
      //         height: 300,
      //         width: double.infinity,
      //         child: Card(
      //           color: Colors.amber,
      //           child: Text("Monthly Attendence"),
      //           shadowColor: Colors.black,
      //           elevation: 20,
                
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("Upcoming Works"),
      //       ),
      //     SizedBox(
      //       width: double.infinity,
      //       height: 300,
      //       child: ListView.builder(
      //         itemCount: 3,
      //         itemBuilder: (context,index){
      //         return ListTile(
      //           leading: Image.asset(img[index]),
      //           title: Text(txt[index]),
      //           subtitle: Text(txt2[index]),
      //           trailing: Icon(Icons.arrow_forward),
      //         );
      //       }
      //       ),
      //     ), 
      //     // ListView(
      //     //       scrollDirection: Axis.horizontal,
      //     //       shrinkWrap: true,
      //     //         physics: NeverScrollableScrollPhysics(),
      //     //       children:[
                  
      //     //        Container(width: 160.0, color: Colors.red,),
      //     //         Container(width: 160.0, color: Colors.orange,),
      //     //         Container(width: 160.0, color: Colors.pink,),
      //     //         Container(width: 160.0, color: Colors.yellow,)
      //     //       ],
      //     //     )  
          
      //     // ListView(scrollDirection: Axis.horizontal,
      //     // children: [
      //     //   Container(color: Colors.amber,)
      //     // ],
      //     // ) 
          
      //     //  Row(
      //     //     children: [
      //     //       InkWell(
      //     //         child: Padding(
      //     //           padding: const EdgeInsets.only(left: 15,right: 15),
      //     //           child: Container(
      //     //             height: 160,width: 120,
      //     //             decoration: BoxDecoration(
      //     //               borderRadius: BorderRadius.circular(10),
                      
      //     //               image: DecorationImage(image:AssetImage("assets/images/records.png"),fit: BoxFit.fill)
      //     //               ),
      //     //           ),
      //     //         ),
      //     //       ),
      //     //        InkWell(
      //     //          child: Padding(
      //     //            padding: const EdgeInsets.only(right: 15),
      //     //            child: Container(
      //     //             height: 160,width: 120,
      //     //             decoration: BoxDecoration(
      //     //               borderRadius: BorderRadius.circular(10),
                       
      //     //               image: DecorationImage(image: AssetImage("assets/images/records.png"),fit: BoxFit.fill)
      //     //               ),
      //     //                          ),
      //     //          ),
      //     //        ),
      //     //        InkWell(
      //     //          child: Padding(
      //     //            padding: const EdgeInsets.only(),
      //     //            child: Container(
      //     //             height: 160,width: 120,
      //     //             decoration: BoxDecoration(
      //     //               borderRadius: BorderRadius.circular(10),
                       
      //     //               image: DecorationImage(image: AssetImage("assets/images/records.png"),fit: BoxFit.fill)
      //     //               ),
      //     //                          ),
      //     //          ),
      //     //        ),
                
      //     //     ],
      //     //   ),
           
      //      ],
      //          ),
      //  ),
      //   floatingActionButton: FloatingActionButton(backgroundColor: const Color.fromARGB(255, 215, 175, 12),
      //   onPressed: () {
      //     // Define the action to be performed on FAB press
      //   },
      //   child: Icon(Icons.chat_rounded,color: Colors.black), // Add your desired icon here
      // ),
               
 