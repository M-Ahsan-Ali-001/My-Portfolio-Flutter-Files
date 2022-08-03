import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/prjoects/Grid_view.dart';
import 'package:m_ahsan_ali_portfolio/responsive.dart';
import 'package:m_ahsan_ali_portfolio/splash/splash_screen.dart';

import 'Button Creator/buttons_sidemenu.dart';
import 'Button Creator/contact_row.dart';
import 'Button Creator/service_txt.dart';
import 'Icons_animated/icons.dart';
import 'SideBar.dart';
import 'counter/count.dart';
import 'flex_7_top/home_dec.dart';
import 'headings/header.dart';
import 'home_page.dart';
import 'main_body/About_txt.dart';
import 'main_body/linear_progr.dart';
import 'main_body/resume.dart';
import 'main_body/row_about.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home:Splash(),//Homepage(),
       title:" M.Ahsan Ali Portfolio",
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],

      // Define the default font family.
      fontFamily: 'Georgia',

      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),
  ),

  );
}
