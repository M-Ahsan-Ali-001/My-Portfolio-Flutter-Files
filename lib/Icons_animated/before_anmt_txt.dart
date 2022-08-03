import 'package:flutter/material.dart';
class TxtBf extends StatelessWidget {
  const TxtBf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      style: TextStyle(color: Colors.blue,fontSize: 15),
        text: "{ ",
        children: [
          TextSpan(
              text: "Developer",
              style: TextStyle(fontFamily: 'sansarif',color: Colors.deepOrange)
          ),
          TextSpan( text: " }  "),

        ]


    ));
  }
}
