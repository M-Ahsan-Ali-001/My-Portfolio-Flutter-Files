import 'package:flutter/material.dart';


class progressBar extends StatelessWidget {
  const progressBar({
    Key? key, required this.txt, required this.tween,
  }) : super(key: key);
  final String txt;
  final double tween;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: tween), duration: Duration(seconds: 5), builder: (context,double value,child)

    =>Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(txt),
            Text((value*100).toInt().toString()+"%",style: TextStyle(
              color: Colors.white54

            ),)
          ],
        ),
        SizedBox(height: 5,),
        LinearProgressIndicator(
          value: value,
          color: Colors.red,
          backgroundColor: Colors.white12,

        )
      ],
    )
    );
  }
}
