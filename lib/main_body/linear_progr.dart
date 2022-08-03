import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/linr_prog/linear_prog.dart';


class GRid_view_loading extends StatelessWidget {
  const GRid_view_loading({
    Key? key, this.c_count=2, this.c_a_s=10, this.m_a_s=10, this.ratio=2,
  }) : super(key: key);

  @override
  final int c_count;
  final double c_a_s;
  final double m_a_s;
  final double ratio;

  Widget build(BuildContext context) {
    return GridView.count(

      crossAxisCount: c_count,
      crossAxisSpacing: c_a_s,
      primary: false,
      shrinkWrap: true,
      mainAxisSpacing:m_a_s,
      childAspectRatio: ratio,



      padding: const EdgeInsets.all(20.0),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(

            children: [

              progressBar(txt: "Python",tween: 0.75,),
              SizedBox(height: 20,),

              progressBar(txt: "C++",tween: 0.80,),
              SizedBox(height: 20,),

              progressBar(txt: "C#",tween: 0.5,),
              SizedBox(height: 20,),

              progressBar(txt: "Java",tween: 0.65,),
              SizedBox(height: 20,),

              progressBar(txt: "Dart",tween: 0.6,),



            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(

            children: [
              progressBar(txt: "Flutter",tween: 0.7,),
              SizedBox(height: 20,),

              progressBar(txt: "Matlab",tween: 0.50,),
              SizedBox(height: 20,),

              progressBar(txt: "BootStrap",tween: 0.5,),
              SizedBox(height: 20,),

              progressBar(txt: "HTML",tween: 0.8,),
              SizedBox(height: 20,),

              progressBar(txt: "CSS",tween: 0.75,),


            ],
          ),
        )

      ],


    );
  }
}

