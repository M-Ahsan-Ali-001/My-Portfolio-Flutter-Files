import 'dart:async';

import 'package:flutter/material.dart';
class ButtonCreator extends StatelessWidget {
   ButtonCreator({
    Key? key, required this.icon, required this.str, required this.controller, required this.pos,
  }) : super(key: key);
  final Icon icon;
  final String str;
  ScrollController controller;
  final double pos;



 // final double pos;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        controller.animateTo(pos,
            duration: Duration(seconds: 3), curve: Curves.easeOut);


        Navigator.pop(context);
      },
      child: RichText(text: TextSpan(
          children: [

            WidgetSpan(child:icon, ),

            TextSpan(
              style: TextStyle(color: Colors.white,fontSize: 18),
              text: str

            )
          ]

      )),
    );
  }
}