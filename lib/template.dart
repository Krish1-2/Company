import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:company/panelWidget.dart';

class Template extends StatefulWidget {
  final String head;
  final String content;
  final List array;
  final List types;

 Template({Key? key,
   required this.head,
   required this.content,
   required this.array,
   required this.types,
 }) : super(key: key);

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  double _panelPosition = 0.0;
  late String head;
  late String content;
  late List array;
  late  List types;

  @override
  void initState() {
    super.initState();
    head = widget.head;
    content = widget.content;
    array=widget.array;
    types=widget.types;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 242, 250, 255),
    body: Stack(
              children: [
                SlidingUpPanel(
                minHeight: 70,
                maxHeight: 200,
                parallaxEnabled: true,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                panelBuilder: (controller) => PanelWidget(
                controller: controller,
                ),
                onPanelSlide: (double position) {
                setState(() {
                _panelPosition = position;
                });
                },
                  body:ListView(
                    children:<Widget>[
                    SafeArea(
                    child: Column(
                      children:<Widget>[
                        Text(head,style: const TextStyle(fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Merriweather',
                          color: Colors.black
                        ),),
                        SizedBox(height:MediaQuery.of(context).size.height*0.04,),
                        Container(
                          height: 230,
                          color: Color.fromARGB(255, 225, 228, 255),
                          child:SizedBox(
                            height: 230,
                            child:ListView
                              (
                              scrollDirection: Axis.horizontal,
                              children:[
                            ...array.map((head)=>Container(
                                  child:Row(
                                  children:<Widget>[
                                    InkWell(
                                        child: Container(
                                          width:200,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 3),
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white,
                                              image: DecorationImage(
                                                image: AssetImage('${head}'),
                                              )),
                                        )
                                    ),
                                    SizedBox(width: 20,)
                                ],
                              )
                              )
                              )
                          ]
                          ) ,
                          )
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height*0.055,),
                        // const Text('DESCRIPTION',
                        //   textAlign:TextAlign.start,
                        //     style: TextStyle(
                        //   fontSize: 25,
                        //     fontWeight: FontWeight.bold,
                        //     fontFamily: 'Inter',
                        //     color: Colors.black),),
                        SizedBox(height:MediaQuery.of(context).size.height*0.01,),
                        Container(
                          height:MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.82,
                          padding: EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 12, 19, 79),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:Center(
                              child:Text(content,style: TextStyle(
                            fontFamily: 'LibreBaskerville',
                            fontSize: 20,
                            color: Colors.white
                          ),))
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height*0.075,),
                        // const Text('For prices please inquire',style: TextStyle(
                        //   fontSize: 20,
                        //   fontFamily:'LibreBaskerville',
                        //   color: Colors.black
                        // ),),
                        ...types.map((type)=>Column(
                            children:<Widget>[
                              Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 0, 83, 181),
                          border: Border.all(width: 2,color: Colors.black)
                          ),
                              width:MediaQuery.of(context).size.width*0.5,
                              height:MediaQuery.of(context).size.height*0.1,
                              padding:EdgeInsets.all(2),
                              child:TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context,"/${type}");
                                }, child: FittedBox(
                                fit: BoxFit.scaleDown,
                              child: Text("$type",style: const TextStyle(
                                  fontFamily: 'LibreBaskville',
                                  fontSize: 30,
                                  color: Colors.white
                              ),),)
                              ),),
                              SizedBox(height:MediaQuery.of(context).size.height*0.02)
                              ]
                            )

                        ),
                        SizedBox(height:MediaQuery.of(context).size.height*0.4,)
                      ],
                    ),
                  ),
    ]
                  )
              )
                  ]
        )
    );
  }
}
