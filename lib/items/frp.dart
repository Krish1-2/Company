import 'package:flutter/material.dart';
import 'package:company/template.dart';

class FRP extends StatelessWidget {
  const FRP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template(head:'FPR POLE BOX',content: 'KENTER MAKE, ISI MARK,FRSLH WIRES/CALBES',
        array: ['images/frp/p1.jpeg','images/frp/p2.jpeg','images/frp/p3.jpeg'],
          types:['MS PIPE', 'GI PIPE','PVC PIPE']
      ),
    );
  }
}
