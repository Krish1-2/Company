import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:company/panelWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _panelPosition = 0.0;
  bool isClicked = false;
  List array=['images/pipes/p1.webp','images/pipes/p2.webp','images/pipes/p4.webp','images/pipes/p4.webp','images/pipes/p4.webp','images/pipes/p4.webp'];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 242, 250, 255),
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
                  Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      Positioned(
                        width: 202,
                        height: 162,
                        top: -(MediaQuery.of(context).size.width*0.1),
                        right: -(MediaQuery.of(context).size.width*0.2),
                        child: Image.asset('images/images.jpeg'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(17),
                        child: const Text(
                            'H.VINODCHANDRA & CO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'AoboshiOne',
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                  const Text(
                    'ABOUT US',
                    style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.all(3.0),
                    height:MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*0.9,
                    child:const Text(
                      'We are glad in introducing ourselves as pioneers in electrical trade. Having a vast experience of more than 50 year,having distributorship and dealerships of many reputation and approved manufacturers. Having a large storage capacity in the market itself to carter  any urgent and bulk needs.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height:MediaQuery.of(context).size.height*0.05,),
                  const Text(
                    'DEALERS IN',
                    style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                   Container(
                    padding:const EdgeInsets.all(6.0),
                    height:MediaQuery.of(context).size.height*0.27,
                    width: MediaQuery.of(context).size.width*0.9,
                    child: const Text(
                      'Vimco MS/GI Pipe & Accessories, ISI Marked Pvc Pipe & Casing & Capping, Bentec (Benlo) make MCB DBs & Switchgears, Kalki Switches & LED Fittings, Kenter Wires & Cables, National FRP Pole Box, Spacers, Saddles, Rawal Plug, Screws.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.003,),
                    Container(
                      padding: const EdgeInsets.all(2),
                      width:MediaQuery.of(context).size.width,
                      color:const  Color.fromARGB(255, 12, 19, 79),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                          const Text("OUR GOWDOWNS",
                            textAlign:TextAlign.center,
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Merriweather",
                              color: Colors.white
                          ),),
                          const SizedBox(height: 20,),
                          Column(
                            children: [
                            Container(
                        height: 130,
                            color:const Color.fromARGB(255, 225, 228, 255),
                            child: Stack(
                              children: [
                                ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: array.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _currentIndex = index;
                                            });
                                          },
                                            child: Container(
                                              width: 110,
                                              height: 110,
                                              margin:const EdgeInsets.only(left: 10.0),
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 3),
                                                borderRadius: BorderRadius.circular(20),
                                                color: Colors.white,
                                                image: DecorationImage(
                                                  image: AssetImage(array[index]),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  icon:const Icon(Icons.arrow_back_ios_new),
                                  onPressed: () {
                                    if (_currentIndex > 0) {
                                      setState(() {
                                        _currentIndex--;
                                      });
                                    }
                                  },
                                ),
                              ),
                                Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        icon:const Icon(Icons.arrow_forward_ios_sharp),
                                        onPressed: () {
                                          if (_currentIndex < array.length - 1) {
                                            setState(() {
                                              _currentIndex++;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _buildDotIndicators(),
                            ),
                  ],
                          ),
                          const SizedBox(height: 20,),
                           Container(
                            padding: EdgeInsets.all(2),
                           child:Text('edg srgsDVvzrevdz vr vwrdfsfvgsrg f erg srge vg se tgrtbh ghm iumgnmf chmthdb ave fwfwerferc',style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),textAlign: TextAlign.center,))
                        ],
                      ),
                    ),
                    const SizedBox(height: 200,),
  ]
                ),
              ],
            ),
          ),
          Positioned(
            width:120,
            height: 50,
            bottom: MediaQuery.of(context).size.height*0.13 + _panelPosition * 170, // Adjust the value as needed
            right: MediaQuery.of(context).size.width*0.35,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              backgroundColor: Color.fromARGB(255,151, 143, 247),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.shopping_cart, color: Colors.black,),
                  Text(
                    'SHOP',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'LibreBaskerville',
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  List<Widget> _buildDotIndicators() {
    return List<Widget>.generate(array.length, (int index) {
      return Padding(
        padding:const EdgeInsets.all(3.0),
        child: Container(
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index ? Colors.blue : Colors.grey,
          ),
        ),
      );
    });
  }
}
