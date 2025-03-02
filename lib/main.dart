import 'package:flutter/material.dart';
import 'package:project3/loginscreen.dart';
import 'package:project3/splashscreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen()
      // Scaffold(
      //   body:Center(child:Container(
      //     height:100,
      //     width:100,
      //     decoration: BoxDecoration(
      //       color:Colors.red,
      //       borderRadius: BorderRadius.only(
      //         topRight: Radius.circular(50),
      //         bottomLeft: Radius.circular(50),
      //         topLeft: Radius.circular(50)
      //       ),
      //       border: Border.all()
      //     )
      //   ))
      // )
    );
  }
}
