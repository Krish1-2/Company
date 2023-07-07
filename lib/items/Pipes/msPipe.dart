import 'package:flutter/material.dart';
import 'package:company/types_template.dart';

class msPipe extends StatefulWidget {
  const msPipe({Key? key}) : super(key: key);

  @override
  State<msPipe> createState() => _msPipeState();
}

class _msPipeState extends State<msPipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Types_template(
        heading:"MS PIPE",
        picture_list: [],
        disc: 'MS pipe as per IS9537 Part 1',
        heading2: 'THICKNESS:   1.4-1.8mm thick',
        disc2: 'Brand: VIMCO make, BEC make    Size: 20mm,25mm,32mm',
        heading3: 'THICKNESS:   1.8-2.2mm thick',
        disc3:'Brand: VIMCO make, BEC make    Size: 20mm,25mm,32mm,40mm,50mm',
      ),
    );
  }
}
