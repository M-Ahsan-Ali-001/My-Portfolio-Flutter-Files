import 'package:flutter/material.dart';

class service_button extends StatelessWidget {
  const service_button({
    Key? key, required this.icon, required this.txt,
  }) : super(key: key);
  final Icon icon;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 250,
          width: 100,

          decoration: BoxDecoration(
            color: Colors.white10,
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(2000),


          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: IconButton(onPressed: (){},
                hoverColor: Colors.amber,

                iconSize: 28,
                splashRadius: 50,
                splashColor: Colors.amber,




                icon: icon),
          ),
        ),

        Text("   "+ txt,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            letterSpacing: 1.0
          ),
        )
      ],
    );
  }
}



