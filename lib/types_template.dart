import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:company/panelWidget.dart';

class Types_template extends StatefulWidget {
  final String heading;
  final List picture_list;
  final String disc;
  final String heading2;
  final String disc2;
  final String heading3;
  final String disc3;

  const Types_template({
    required this.heading,
    required this.picture_list,
    required this.disc,
    required this.heading2,
    required this.disc2,
    required this.heading3,
    required this.disc3,
    Key? key
  }) : super(key: key);

  @override
  State<Types_template> createState() => _Types_templateState();
}

class _Types_templateState extends State<Types_template> {
  late String heading;
  late List picture_list;
  late String disc;
  late String heading2;
  late String disc2;
  late String heading3;
  late String disc3;

  @override
  void initState(){
    super.initState();
    heading=widget.heading;
    picture_list=widget.picture_list;
    disc=widget.disc;
    heading2=widget.heading2;
    disc2=widget.disc2;
    heading3=widget.heading3;
    disc3=widget.disc3;
  }

  @override
  Widget build(BuildContext context) {
    double _panelPosition = 0.0;
    bool isClicked = false;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 250, 255),
   body: Stack(
     children: [
       SlidingUpPanel(
         minHeight: MediaQuery.of(context).size.height*0.1,
         maxHeight: MediaQuery.of(context).size.height*0.35,
         parallaxEnabled: true,
         borderRadius: BorderRadius.circular(30),
         panelBuilder: (controller) => PanelWidget(
           controller: controller,
         ),
         onPanelSlide: (double position) {
           setState(() {
             _panelPosition = position;
           });
         },
         body:ListView(
           scrollDirection: Axis.vertical,
           // child:Column
           children: <Widget>[
             Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children:<Widget>[
                   Text(heading,style:const TextStyle(
                     fontSize: 40,
                     fontFamily: 'Baskville',
                     fontWeight: FontWeight.bold,
                     color: Colors.black
                   ),),
                   SizedBox(height:MediaQuery.of(context).size.height*0.001,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.3,
                  ),
                   SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                   const Text('SPECIFICATIONS',style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                     fontFamily: 'Merriweather'
                   ),),
                   Container(
                     width:MediaQuery.of(context).size.width*0.8,
                     padding: EdgeInsets.all(14),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: const Color.fromARGB(255, 212, 173, 252),
                       border: Border.all(width: 2),
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:<Widget>[
                        Text(disc,style:const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),),
                         SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                         Text(heading2,style: TextStyle(fontSize: 15,
                         fontFamily: 'Inter',
                         color: Colors.black,
                         fontWeight: FontWeight.bold),),
                         Container(
                           width: MediaQuery.of(context).size.width*0.7,
                           padding: EdgeInsets.all(8),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Color.fromARGB(255, 92, 70, 156),
                           ),
                           // height:MediaQuery.of(context).size.height*0.1,
                           child:Column(
                             children:<Widget>[
                             Text(disc2,style: TextStyle(
                             fontSize: 15,
                             fontFamily: 'Inter',
                             color: Colors.white
                           ),),
                               SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                               Container(
                                 width:80,
                                 height:38,
                                 decoration: BoxDecoration(
                                   color: Color.fromARGB(255, 245, 172, 32),
                                   borderRadius: BorderRadius.circular(20),
                                   border: Border.all(width: 2)
                                 ),
                                 child: TextButton(
                                   onPressed:(){Navigator.pushNamed(context, '/${heading}rate');},
                                   child: Text(("RATE"),style: TextStyle(
                                   color: Colors.black,
                                 ),),)
                               )
                             ],
                           )
                           ),
                         SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                         Text(heading3,style: TextStyle(fontSize: 15,
                             fontFamily: 'Inter',
                             color: Colors.black,
                             fontWeight: FontWeight.bold),),
                         Container(
                             width: MediaQuery.of(context).size.width*0.7,
                             padding: EdgeInsets.all(8),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Color.fromARGB(255, 92, 70, 156),
                             ),
                             // height:MediaQuery.of(context).size.height*0.1,
                             child:Column(
                               children:<Widget>[
                                 Text(disc3,style: TextStyle(
                                     fontSize: 15,
                                     fontFamily: 'Inter',
                                     color: Colors.white
                                 ),),
                                 SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                                 Container(
                                     width:80,
                                     height:38,
                                     decoration: BoxDecoration(
                                         color: Color.fromARGB(255, 245, 172, 32),
                                         borderRadius: BorderRadius.circular(20),
                                         border: Border.all(width: 2)
                                     ),
                                     child: TextButton(
                                       onPressed:(){Navigator.pushNamed(context, '/rate');},
                                       child: Text(("RATE"),style: TextStyle(
                                         color: Colors.black,
                                       ),),)
                                 )
                               ],
                             )
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height:MediaQuery.of(context).size.height*0.2,)
                 ]
             ),
           ],
         ),
       ),
     ],
   ),
    );
  }
}
