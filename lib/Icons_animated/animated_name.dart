import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

import '../responsive.dart';


class animatedText extends StatelessWidget {
  const animatedText({
    Key? key, this.size=20,
  }) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontFamily: 'sansarif',color: Colors.white,fontSize: size,fontWeight: FontWeight.bold),
      child: Row(

        children: [

          Text("I'm ",),
          AnimatedTextKit(


              animatedTexts: [




                TyperAnimatedText("Mobile Developer  ",
                  speed: Duration(milliseconds: 50,),


                ),

                TyperAnimatedText("Web Developer",speed: Duration(milliseconds: 50,),
                ),

                TyperAnimatedText("Ethical Hacker  ",speed: Duration(milliseconds: 50,),

                ),
                TyperAnimatedText("Student  ",speed: Duration(milliseconds: 50,),

                ),

              ]),

        ],
      ),
    );
  }
}