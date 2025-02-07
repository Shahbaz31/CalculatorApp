import 'package:calculatorapp/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:calculatorapp/constants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;

  const MyButton({
    Key? key,
    required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress ,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
                child: Text(
              title,
              style: mystyle,
            )),
          ),
        ),
      ),
    );
  }
}
