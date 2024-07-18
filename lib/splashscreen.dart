import 'dart:async';

import 'package:calculatorapp/homescreen.dart';
import 'package:flutter/material.dart';



class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Image(
        fit: BoxFit.fitHeight,
        height: double.infinity,
        image:
        NetworkImage('https://images.pexels.com/photos/6694533/pexels-photo-6694533.jpeg?auto=compress&cs=tinysrgb&w=600'),),
    );
  }

}

