import 'package:flutter/material.dart';
import 'package:company/template.dart';

class Electricals extends StatelessWidget {
  const  Electricals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template(head:'ELECTRICALS',content: 'KENTER MAKE, ISI MARK,FRSLH WIRES/CALBES',
        array: ['images/electricals/p1.png','images/electricals/p2.png','images/electricals/p3.png'],
          types:['MS PIPE', 'GI PIPE','PVC PIPE']
      ),
    );
  }
}
