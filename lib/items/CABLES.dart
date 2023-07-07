import 'package:flutter/material.dart';
import 'package:company/template.dart';

class Cables extends StatelessWidget {
  const Cables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template(head:'CABLES/WIRES',
          content: 'KENTER MAKE, ISI MARK,FRSLH WIRES/CALBES,CO AXIAL CABLES, SOLAR CABLES,FS CABLES, POWER AND CONTROL CABLES,MULTI CORE CABLES,HOUSE WIRE',
        array: ['images/cables/p1.jpg','images/cables/p2.jpg','images/cables/p3.jpg'],
          types:['MS PIPE', 'GI PIPE','PVC PIPE']
              ),
    );
  }
}
