import 'package:flutter/material.dart';
class Tween_counter extends StatelessWidget {
  const Tween_counter({
    Key? key, required this.end, required this.txt,this.size=20,
  }) : super(key: key);
  final int end;
  final String txt;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder(
            tween: IntTween(begin: 0,end: end), duration: Duration(seconds: 5), builder: (context,value,child)=>

            Text("$value+",

            style: TextStyle(color: Colors.amber,fontSize: 20),)),
        Text(txt,style: TextStyle(fontSize: size),)
      ],
    );
  }
}
