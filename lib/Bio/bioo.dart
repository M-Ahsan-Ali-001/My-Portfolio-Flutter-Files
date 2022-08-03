import 'package:flutter/material.dart';
class bio extends StatelessWidget {
  const bio({
    Key? key, required this.field, required this.ans, this.sh=16,
  }) : super(key: key);
  final String field, ans;
  final double sh;

  @override
  Widget build(BuildContext context) {
    return Text.rich(

      TextSpan(

          text: "",
          children: [
            WidgetSpan(child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Icon(Icons.arrow_forward_ios_sharp
                ,size: 15,color: Colors.blue,),
            )),
            TextSpan(
                text: field,
                style: TextStyle( fontSize: sh
                    ,fontWeight: FontWeight.bold,
                    letterSpacing: 1.0

                )
            ),
            TextSpan(
                text: ans,
                style: TextStyle(
                    fontSize: sh,
                    color: Colors.white54,
                    letterSpacing: 1.0


                )
            ),
          ]

      ),



    );
  }
}

