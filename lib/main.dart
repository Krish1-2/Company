import 'package:flutter/material.dart';
import 'package:company/home.dart';
import 'package:company/login.dart';
import 'package:company/shop.dart';
import 'package:company/items/Pipes/PIPES.dart';
import 'package:company/items/ACCESSORIES.dart';
import 'package:company/items/ELECTRICALS.dart';
import 'package:company/items/frp.dart';
import 'package:company/items/switch.dart';
import 'package:company/items/CABLES.dart';
import 'package:company/items/Pipes/msPipe.dart';
import 'package:company/items/Pipes/giPipe.dart';
import 'package:company/items/Pipes/giPipeRate.dart';
import 'package:company/items/Pipes/PVCPipe.dart';

void main() {
  runApp(MaterialApp(
      initialRoute:'/',
      routes:{
      '/':(context)=>const Home(),
        '/login':(context)=>Login(),
        '/shop':(context)=>const Shop(),
        '/PIPES':(context)=>const Pipes(),
        '/ACCESSORIES':(context)=>const Accessories(),
        '/CABLES&WIRES':(context)=>const Cables(),
        '/FRP POLE BOXES':(context)=>const FRP(),
        '/SWITCH GEAR':(context)=>const Switch1(),
        '/ELECTRICALS':(context)=>const Electricals(),
        '/MS PIPE':(context)=>const msPipe(),
        '/GI PIPE':(context)=>const giPipe(),
        '/GI PIPErate':(context)=>const GiPipeRate(),
        '/PVC PIPE':(context)=>const PVCPipe(),
      }
  )
  );
}


