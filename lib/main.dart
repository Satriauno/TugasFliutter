// import 'dart:ffi';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter/TugasProject.dart';


void main() {
  runApp(new MaterialApp(home: new application()));
}

class MyApp extends StatefulWidget {


   MyApp();
   
  @override
  State<StatefulWidget> createState() {
    return MyAppstate();
  }
  // Widget? tes2;
  // MyApp({required String value}){
  //   tes2 = Text(value);
  // }

  // MyApp({String? value}){
  //   print(value);
  // }

  
}

class MyAppstate extends State<MyApp>{
  var hitung = 0;

  Widget build(BuildContext context){
   return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text("anda telah memecat uang sebanyak"),
          Text(
            hitung.toString(),
            style: TextStyle(color: Colors.green, fontSize: 50)
            ),
          Icon(Icons.monetization_on),
        ],)
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              hitung = hitung + 1;
            });
            print("logg hitung $hitung ");
          },
          child: Icon(Icons.add),
          ),
      )
    );
  }
}