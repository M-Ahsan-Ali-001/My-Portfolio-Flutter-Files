import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/Icons_animated/animated_name.dart';
import 'package:m_ahsan_ali_portfolio/Icons_animated/before_anmt_txt.dart';
import 'package:m_ahsan_ali_portfolio/responsive.dart';

class Home_decor extends StatelessWidget {
  const Home_decor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("Bg/main_img.jpg",fit: BoxFit.cover,),
          Container(color: Colors.black.withOpacity(0.40),),
          Padding(

            padding: Respo.istest(context)?const EdgeInsets.symmetric(horizontal: 200):
            const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(!Respo.istxt(context))
                Text("Muhammad Ahsan Ali" ,style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,),),
                if(Respo.istxt(context))
                  Text("Muhammad Ahsan Ali" ,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold,),),


                Row(
                  children: [
                    if(!Respo.isMob(context))
                    TxtBf(),
                    if(!Respo.istxt(context))
                    animatedText(),
                    if(Respo.istxt(context))
                      animatedText(size: 12,),
                    if(!Respo.isMob(context))
                      TxtBf(),
                    SizedBox(height: 50,),


                  ],
                ),





              ],
            ),
          )

        ],
      ),
    );
  }
}


