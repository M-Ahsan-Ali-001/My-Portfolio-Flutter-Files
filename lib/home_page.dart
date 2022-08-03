import 'dart:html';

import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/prjoects/Grid_view.dart';
import 'package:m_ahsan_ali_portfolio/profile/profile_name.dart';
import 'package:m_ahsan_ali_portfolio/responsive.dart';



import 'Bio/bioo.dart';
import 'Button Creator/buttons_sidemenu.dart';
import 'Button Creator/contact_row.dart';
import 'Button Creator/contaxt-But.dart';
import 'Button Creator/serv_butt.dart';
import 'Button Creator/service_txt.dart';
import 'Icons_animated/animated_name.dart';
import 'Icons_animated/before_anmt_txt.dart';
import 'Icons_animated/icons.dart';
import 'SideBar.dart';
import 'counter/count.dart';
import 'flex_7_top/home_dec.dart';
import 'headings/header.dart';
import 'linr_prog/linear_prog.dart';
import 'main_body/About_txt.dart';
import 'main_body/Grid_resume.dart';
import 'main_body/grid_aboutt.dart';
import 'main_body/linear_progr.dart';
import 'main_body/main_sxreen.dart';
import 'main_body/resume.dart';
import 'main_body/row_about.dart';


class Homepage extends StatelessWidget {
   Homepage({Key? key,  }) : super(key: key);


  @override
 ScrollController controller = ScrollController();
   //ScrollController controller2 = ScrollController();
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: Respo.istest(context) ? null :AppBar(
        //backgroundColor: ,
        leading: Builder(
          builder: (context)=>IconButton(onPressed: (){

            Scaffold.of(context).openDrawer();
          },
              icon: Icon(Icons.menu,)),
        ),

      ),
      drawer: SideMenu(cont1: controller,),

      body: Center(
        child: Container(
        constraints: BoxConstraints(maxWidth: 1440.0),
          child: Row(

            children: [
              if(Respo.istest(context))
              Expanded(
                  flex: 2,
                  child: SideMenu(cont1: controller,),
                  ),


              Expanded(


                  flex: 7,

                  child: Container(
                    child: main_screen(controller1: controller))



              ),

            ],


          ),
        ),
      ),



    );
  }
}





