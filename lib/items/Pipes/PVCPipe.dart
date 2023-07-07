import 'package:flutter/material.dart';
import 'package:company/types_template.dart';

class PVCPipe extends StatefulWidget {
  const PVCPipe({Key? key}) : super(key: key);

  @override
  State<PVCPipe> createState() => _PVCPipeState();
}

class _PVCPipeState extends State<PVCPipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Types_template(
        heading:"PVC PIPE",
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
