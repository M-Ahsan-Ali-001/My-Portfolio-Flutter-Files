import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/Button%20Creator/contact_row.dart';
import 'package:m_ahsan_ali_portfolio/Button%20Creator/service_txt.dart';
import 'package:m_ahsan_ali_portfolio/counter/count.dart';
import 'package:m_ahsan_ali_portfolio/flex_7_top/home_dec.dart';
import 'package:m_ahsan_ali_portfolio/headings/header.dart';
import 'package:m_ahsan_ali_portfolio/main_body/resume.dart';
import 'package:m_ahsan_ali_portfolio/main_body/row_about.dart';
import 'package:m_ahsan_ali_portfolio/prjoects/Grid_view.dart';

import '../responsive.dart';
import 'About_txt.dart';
import 'linear_progr.dart';


class main_screen extends StatelessWidget {
  const main_screen({
    Key? key,
    required this.controller1,
  }) : super(key: key);

  final ScrollController controller1;

  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller:controller1,
      child: Column(


        children: [
          Home_decor(),
          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: heading(head: "About",h: 20,),
          ),
          SizedBox(height: 10,),
          About_text(),

          SizedBox(height: 20,),
          Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Text("Mobile & Web Developer.",style: TextStyle(color: Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.bold),),

                  ),



                ],
              )),
          //SizedBox(height: 30,),


          About(),


          // Respo(
          //   smallmob: GRid_About(c_count: 1,ratio: 0.9,),
          //   mobile:  GRid_About(c_count: 1,ratio: 2,m_a_s: 40,c_a_s: 40,),
          //   Desktop:  GRid_About(ratio: 3.3),
          //
          // mobileLarge: GRid_About(c_count:2,ratio: 0.8,),
          //   Tablet: GRid_About(ratio: 1.9,),
          //
          //
          // ),

          // GRid_About(),
          // heading(head: " Progress",h: 20,)
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: heading(head: "Progress",h: 20,),
          ),
          SizedBox(height: 20,),//mobile
          if(Respo.isDesktop(context))
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Tween_counter(end: 9,txt: "Projects",),
                  Tween_counter(end: 10,txt: "Github Repositories",),
                  Tween_counter(end: 12,txt: "Programming Languages",),



                ],
              ),
            ),
          // SizedBox(height: 20,),
          //loading tablet
          if(Respo.isTablet(context))
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Tween_counter(end: 9,txt: "Projects",size: 15,),
                      Tween_counter(end: 10,txt: "Repositories",size: 15,),




                    ],
                  ),
                  Tween_counter(end: 12,txt: "IDE used",size: 15,),
                ],
              ),
            ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: heading(head: "Skills",h: 20,),
          ),




          Respo(
            smallmob: GRid_view_loading(c_count: 1,ratio: 1.2,),
            mobile:GRid_view_loading(c_count: 1,ratio: 1.8,) ,
            Desktop:GRid_view_loading(),

            Tablet:GRid_view_loading(ratio: 1.4,c_count: 2,) ,
            mobileLarge:GRid_view_loading(ratio: 1,c_count: 2,) ,


          ),
          if(!Respo.isMobLarge(context))
            SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: heading(head: "Resume",h: 20,),
          ),
          SizedBox(height: 50,),
          Resumea(),
          SizedBox(height: 50,),

          // Respo(
          //     Desktop:  GridView_resume(ratio: 0.5,),
          //
          //     smallmob:  GridView_resume(ratio: 0.19,c_count: 1,h: 200,),
          //   Tablet:  GridView_resume(h:200,ratio: 0.2,),
          //   mobileLarge: GridView_resume(ratio: 0.4,c_count: 1,h: 350,) ,
          //   mobile:GridView_resume(ratio: 0.3,c_count: 1,h: 250,) ,
          //
          //
          //
          // ),




          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: heading(head: "Portfolio",h: 20,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Respo(Desktop: GRIDit(),
              Tablet: GRIDit(crossAxisCount: 2,),
              mobile: GRIDit(crossAxisCount: 1,),
              smallmob:GRIDit(crossAxisCount: 1,),
              mobileLarge: GRIDit(crossAxisCount: 2,),


            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: heading(head: "Services",h: 20,),
          ),
          //SizedBox(height: 20,),


          services_with_text(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: heading(head: "Contact",h: 20,),
          ),
          SizedBox(height: 40,),
          NewWidget(),
          SizedBox(height: 40,),






        ],
      ),
    );
  }
}


