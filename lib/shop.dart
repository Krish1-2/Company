import 'package:company/panelWidget.dart';
import 'package:flutter/material.dart';
import 'package:company/auth.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:company/panelWidget.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List array=['PIPES','CABLES&WIRES','SWITCH GEAR','ELECTRICALS','ACCESSORIES','FRP POLE BOXES'];
  Credentials c=Credentials();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 250, 255),
      body: SlidingUpPanel(
         minHeight: 70,
         maxHeight: 200,
         parallaxEnabled: true,
         borderRadius:const BorderRadius.vertical(top: Radius.circular(30)),
         panelBuilder: (controller)=> PanelWidget(
             controller:controller,
         ),
          body:SafeArea(
                child:ListView(
                    scrollDirection: Axis.vertical,
                  children:[
                  Text("Welcome ${c.username}!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                    SizedBox(height: 20,),
                    ...array.map((head)=>Container(
                      child:Column(
                        children:<Widget>[
                          SizedBox(
                            height:85,
                            width:275,
                          child:TextButton(
                            onPressed:(){
                              Navigator.pushNamed(context, '/${head}');
                            },
                              style: TextButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 12, 19, 79),
                              ),
                            child: FittedBox(
                                fit: BoxFit.scaleDown,
                            child:Text(head,style:const TextStyle(
                fontFamily:'LibreBaskerville',
                fontSize: 40,
                              color: Colors.white,
              )
                                )
                              )
                            ),
                          ),
                          SizedBox(height: 20,)
                        ] ,
                      )
                    )).toList(),
                    SizedBox(height: 150,)
                  ]
          )
        ),
      )
    );
  }
}
