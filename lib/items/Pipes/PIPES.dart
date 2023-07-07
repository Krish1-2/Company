import 'package:flutter/material.dart';
import 'package:company/template.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Pipes extends StatelessWidget {
  const Pipes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String info=Info('Pipes') as String;
    return Scaffold(
      body: Template(head:'PIPES',
        content: 'Both metallic and non metallic conduit pipe as per ISI specifications with accessories',
        array: ['images/pipes/p1.webp','images/pipes/p2.webp','images/pipes/p4.webp'],
        types:['MS PIPE', 'GI PIPE','PVC PIPE']
        ),
    );
  }

  Future<String> Info(String item) async {
    try {
      // Make an HTTP POST request to your server endpoint
      final response = await http.post(
        Uri.parse('http://10.0.2.2:8000/rate'),
        body: {'item':item},
      );
      if (response.statusCode == 200) {
        print(response);
        final getResponse = await http.get(
          Uri.parse('http://10.0.2.2:8000/rate'),
        );
        if (getResponse.statusCode == 200) {
          final responseJson = jsonDecode(getResponse.body);
          print(responseJson);
          return responseJson['types'];
        } else {
          return("Could not get 'GET' info.");
        }
      }
      else {return("Could not get 'POST' info.");}
    }
    catch (e) {return('Error: $e');}
  }

}
