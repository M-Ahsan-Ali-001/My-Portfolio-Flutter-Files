import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/Bio/bioo.dart';

import '../responsive.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(!Respo.isTablet(context))
        SizedBox(height: 40,),
         if(!Respo.isTablet(context))
        SizedBox(

          //height: 10,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Row(
              children: [


                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    bio(field: "  Occupation:", ans:"  Student" ,),
                    SizedBox(height: 20,),
                    bio(field: "  Website:", ans:"  www.MuhammadAhsanAli_portfolio.com" ,),
                    SizedBox(height: 20,),
                    bio(field: "  Phone:", ans:"  +92-336-5306746" ,),
                    SizedBox(height: 20,),
                    bio(field: "  Country:", ans:"  Pakistan" ,),







                  ],
                ),
                ///in
                ///
                SizedBox(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bio(field: "  City", ans:"  Islamabad" ,),
                      SizedBox(height: 20,),
                      bio(field: "  Email:", ans:"  muhammadahsanali120@gmail.com" ,),
                      SizedBox(height: 20,),
                      bio(field: "  Degree:", ans:"  Bachelors"),
                      SizedBox(height: 20,),
                      bio(field: "  Freelancer", ans:"  Available" ,),





                    ],
                  ),
                ),


              ],
            ),
          ),
        ),

        //2nd


        if(Respo.isTablet(context))
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(

                    //height: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),

                        SizedBox(
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              bio(field: "  Occupation:", ans:"  Student" ,),
                              SizedBox(height: 20,),
                              bio(field: "  Website:", ans:"  www.MuhammadAhsanAli_portfolio.com" ,),
                              SizedBox(height: 20,),
                              bio(field: "  Phone:", ans:"  +92-336-5306746" ,),
                              SizedBox(height: 20,),
                              bio(field: "  Country:", ans:"  Pakistan" ,),

                              SizedBox(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20,),
                                    bio(field: "  City", ans:"  Islamabad" ,),
                                    SizedBox(height: 20,),
                                    bio(field: "  Email:", ans:"  muhammadahsanali120@gmail.com" ,),
                                    SizedBox(height: 20,),
                                    bio(field: "  Degree:", ans:"  Bachelors"),
                                    SizedBox(height: 20,),
                                    bio(field: "  Freelancer", ans:"  Available" ,),





                                  ],
                                ),
                              ),








                            ],
                          ),
                        ),
                        ///in
                        ///



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


      ],

    );
  }
}
