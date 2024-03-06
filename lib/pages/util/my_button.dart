// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const MyButton({super.key,

  required this.iconImagePath,
  required this.buttonText,
  
  
  
  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 80,
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 12,
                      spreadRadius: 2),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Image.asset(iconImagePath),
            )),
        SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: TextStyle(
            color: const Color.fromARGB(255, 155, 140, 4),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )
        // /send button
      ],
    );
  }
}
