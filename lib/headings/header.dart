import 'package:flutter/material.dart';
class heading extends StatelessWidget {
  const heading({
    Key? key, required this.head, required this.h,
  }) : super(key: key);
final String head;
 final  double h;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: h),
            child: Text(head,style: TextStyle(color: Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
        ),
        //Divider(color: Colors.blue,)
        Align(

          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 60,
              height: 10,
              child: Divider(thickness: 2.5,color: Colors.blue,),
            ),
          ),
        ),
      ],
    );
  }
}
