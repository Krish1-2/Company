import 'package:flutter/material.dart';
import 'package:company/template.dart';

class Accessories extends StatelessWidget {
  const Accessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template(head:'ACCESSORIES',content: 'KENTER MAKE, ISI MARK,FRSLH WIRES/CALBES',
        array: ['images/pipes/p1.webp','images/pipes/p2.webp','images/pipes/p4.webp'],
          types:['MS PIPE', 'GI PIPE','PVC PIPE']
      ),
    );
  }
}
