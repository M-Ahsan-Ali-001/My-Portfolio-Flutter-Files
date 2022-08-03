import 'package:flutter/material.dart';

class button_Contact extends StatelessWidget {
  const button_Contact({
    Key? key, required this.icon, required this.head, required this.txt, this.size=15,
  }) : super(key: key);
  final Icon icon;
  final String head , txt;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:


    const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 100,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white10,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(2000),


            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: IconButton(onPressed: (){},
                  hoverColor: Colors.black38,

                  iconSize: 28,
                  splashRadius: 25,
                  splashColor: Colors.amber,




                  icon: icon),
            ),
          ),
          SizedBox(width: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(head,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 20



                ),),
                //SizedBox(height: 4,),
                Text(txt,
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: size,

                  ),
                )

              ],
            ),
          )


        ],
      ),
    );
  }
}