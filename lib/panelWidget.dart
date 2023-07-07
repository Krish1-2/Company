import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  const PanelWidget({
        Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 29, 38, 125) ,
  body:Center(
    child:Container(
              decoration: const BoxDecoration(
              border: Border(
                left:BorderSide( color: Colors.white, // Replace with your desired border color
                  width: 1.0,),
                top:BorderSide( color: Colors.white, // Replace with your desired border color
                  width: 1.0,),
                right:BorderSide( color: Colors.white, // Replace with your desired border color
                  width: 1.0,),
                // Replace with your desired border width
              ),
              ),
        child:Column(
          children:<Widget>[
            SizedBox(height:MediaQuery.of(context).size.height*0.02,),
            Center(
                child:Container(
                  width:30,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                )
            ),
            SizedBox(height:10),
            const Text('CONTACT US',style: TextStyle(
                fontFamily:'Merriweather',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 17
            ), ),
            const SizedBox(height:5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                // SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                Text('EMAIL:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      fontSize: 15,
                    color: Colors.white
                  ),),
                Text('hvinod55@yahoo.co.in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,color: Colors.white
                  ),),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                // SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                Text('PHONE:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: Colors.white
                  ),),
                Text('9322602855',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: Colors.white
                  ),),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                // SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                Text('LANDLINE:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: Colors.white
                  ),),
                Text('02240034105/22054374',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: Colors.white
                  ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                // SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                const Text('ADDRESS:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: Colors.white
                  ),),
                 Container(
                  width: MediaQuery.of(context).size.width*0.6,
                  child: Text('508,kalbadevi road,near Edward Cinema,Mumbai 02',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: Colors.white
                  ),),)
              ],
            ),
          ],
        )
    )
    )
    );
  }
}
