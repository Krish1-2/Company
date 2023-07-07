import 'package:flutter/material.dart';
import 'package:company/template.dart';

class Switch1 extends StatelessWidget {
  const Switch1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template(head:'SWITCH GEAR',content: 'BENTEC:IP/DP PRODUCTS',
        array: ['images/switch/p1.jpeg','images/switch/p2.jpeg','images/switch/p3.jpeg'],
          types:['MS PIPE', 'GI PIPE','PVC PIPE']
      ),
    );
  }
}
