import 'package:flutter/material.dart';
import 'package:jawisheek/screens/home.dart';


void main() {
  runApp(jihosheek());
}

class jihosheek extends StatelessWidget {

  final String appName = 'CIMILO SHEEKAPP';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData.dark(),
      home: const HomeScreen(title: 'CIMILO SHEEKAPP'),
    );
  }
}

