import 'package:flutter/material.dart';

class GridView_resume extends StatelessWidget {
  const GridView_resume({
    Key? key, this.c_count=2, this.c_a_s=10, this.m_a_s=10, this.ratio=0.67, this.pad=20, this.h=400,
  }) : super(key: key);
  final int c_count;
  final double c_a_s;
  final double m_a_s;
  final double ratio;
  final double pad;
  final double h;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: c_count,
      crossAxisSpacing: c_a_s,
      mainAxisSpacing: m_a_s,
      shrinkWrap: true,
      padding:  EdgeInsets.all(pad),
      primary: false,
      childAspectRatio:ratio ,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Summary",style: TextStyle(
                  fontSize: 18,fontWeight:FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.deepOrange

              ),),
              SizedBox(height: 20,),
              Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Flexible(child: VerticalDivider(
                          color: Colors.deepOrange,
                          thickness: 3,
                        )),
                        SizedBox(
                          width: h,

                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text.rich(
                                TextSpan(
                                    text: "Muhammad Ahsan Ali\n\n"
                                    ,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                    height: 1.9,
                                    color:Colors.amber
                                )
                                    ,
                                    children: [
                                      TextSpan(
                                          text: "Engaged, creative computer science"
                                              " student. Inquisitive, energetic comp"
                                              "uter science specialist skilled in ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color:Colors.white
                                          )

                                      ),
                                      TextSpan(
                                        text: "leadership, with strong foundation in "
                                            " math,logic, and coding. Extensive "
                                            "knowledge of different programming languages.\n\n",
                                        style:TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color:Colors.white
                                        ),


                                      ),
                                      WidgetSpan(child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: Icon(Icons.circle,size:6),
                                      )),
                                      TextSpan(
                                          text: "Islamabad, Pakistan\n",
                                          style: TextStyle(
                                              color: Colors.white
                                          )

                                      ),

                                      WidgetSpan(child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: Icon(Icons.circle,size:6),
                                      )),
                                      TextSpan(
                                          text: "(+92)-336-5306746\n",
                                          style: TextStyle(
                                              color: Colors.white
                                          )

                                      ),
                                      WidgetSpan(child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: Icon(Icons.circle,size:6),
                                      )),
                                      TextSpan(
                                          text: "muhammadahsanali120@gmail.com\n",
                                          style: TextStyle(
                                              color: Colors.white
                                          )

                                      ),








                                    ]

                                )

                            ),

                          ),
                        ),


                      ],

                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Education",style: TextStyle(
                            fontSize: 18,fontWeight:FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.deepOrange

                        ),),

                        SizedBox(
                          height: 20,

                        ),

                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Flexible(child: VerticalDivider(
                                color: Colors.deepOrange,
                                thickness: 3,
                              )),
                              SizedBox(
                                width: h,

                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Text.rich(
                                      TextSpan(
                                          text: "Bachelor's of Science : BSCS\n\n"
                                          ,style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                          height: 1.9,
                                          color: Colors.amber
                                      )
                                          ,
                                          children: [
                                            WidgetSpan(

                                                child: Container(
                                                  color: Colors.white12,
                                                  height: 30,
                                                  width:120,
                                                  child: Center(
                                                    child: (
                                                        Text(
                                                          "2020 - Present",
                                                          style: TextStyle(
                                                              color: Colors.deepOrange
                                                          ),
                                                        )



                                                    ),
                                                  ),

                                                )),
                                            TextSpan(

                                              text: "\nInstitute of Space Technology Islamabad, Islamabad Highway Toll Plaza, 1 "
                                                  "Islamabad Expressway, near Rawat"
                                                  "Sector H DHA Phase II, Islamabad,"
                                                  "Islamabad Capital Territory 44000."
                                                  "Currently in 5th Semster\n\n\n",
                                              style:TextStyle(

                                                  letterSpacing: 1.0,
                                                  height: 1.9,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white
                                              ) ,

                                            ),


                                            WidgetSpan(child: Text.rich(
                                                TextSpan(
                                                    text: "HSSC in ICS\n\n"
                                                    ,style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.0,
                                                    height: 1.9,
                                                    color: Colors.amber
                                                )
                                                    ,
                                                    children: [

                                                      WidgetSpan(

                                                          child: Container(
                                                            color: Colors.white12,
                                                            height: 30,
                                                            width:120,
                                                            child: Center(
                                                              child: (
                                                                  Text(
                                                                    "2018 - 2020",
                                                                    style: TextStyle(
                                                                        color: Colors.deepOrange
                                                                    ),
                                                                  )



                                                              ),
                                                            ),

                                                          )),
                                                      TextSpan(

                                                        text: "\nPak-Turk Marrif International Schools "
                                                            "& Colleges, Park Link Road, Chak "
                                                            "Shahzad, Islamabad.",
                                                        style:TextStyle(

                                                            letterSpacing: 1.0,
                                                            height: 1.9,
                                                            fontWeight: FontWeight.normal,
                                                            color: Colors.white
                                                        ) ,

                                                      ),








                                                    ]

                                                )

                                            ),
                                            ),








                                          ]

                                      )

                                  ),

                                ),
                              ),


                            ],

                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              )



            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Professional Experience",style: TextStyle(
                  fontSize: 18,fontWeight:FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.deepOrange

              ),),
              SizedBox(height: 20 ,),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Flexible(child: VerticalDivider(
                      color: Colors.deepOrange,
                      thickness: 3,
                    )),

                    SizedBox(
                      width: h,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text.rich(
                            TextSpan(
                                text: "Team Lead\n\n"
                                ,style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                                height: 1.9,
                                color: Colors.amber
                            )
                                ,
                                children: [
                                  WidgetSpan(

                                      child: Container(
                                        color: Colors.white12,
                                        height: 30,
                                        width:120,
                                        child: Center(
                                          child: (
                                              Text(
                                                "2021 - 2022",
                                                style: TextStyle(
                                                    color: Colors.deepOrange
                                                ),
                                              )



                                          ),
                                        ),

                                      )),
                                  TextSpan(

                                    text: "\nUI/UX LEAD, Islamabad Highway Toll "
                                        "Plaza, 1 Islamabad Expressway, near"
                                        " Rawat Sector H DHA Phase II, Islamabad, Pakistan\n",
                                    style:TextStyle(

                                        letterSpacing: 1.0,
                                        height: 1.9,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white
                                    ) ,

                                  ),
                                  WidgetSpan(child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Icon(Icons.circle,size:6),
                                  )),
                                  TextSpan(
                                      text: " Core team member of GDSC-IST.\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white

                                      )

                                  ),

                                  WidgetSpan(child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Icon(Icons.circle,size:6),
                                  )),
                                  TextSpan(
                                      text: " Developed a website for GDSC-IST on "
                                          "Wix.com:\n   https://gdscist101.wixsite.com/my-site\n\n\n\n\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white
                                      )

                                  ),



                                  WidgetSpan(child: Text.rich(
                                      TextSpan(
                                          text: "Internship at FATA House\n\n"
                                          ,style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                          height: 1.9,
                                          color: Colors.amber
                                      )
                                          ,
                                          children: [

                                            WidgetSpan(

                                                child: Container(
                                                  color: Colors.white12,
                                                  height: 30,
                                                  width:120,
                                                  child: Center(
                                                    child: (
                                                        Text(
                                                          "2021 - 2022",
                                                          style: TextStyle(
                                                              color: Colors.deepOrange
                                                          ),
                                                        )



                                                    ),
                                                  ),

                                                )),
                                            TextSpan(

                                              text: "\nIntern at Fata House, G-5/1 G-5, Islamabad, Islamabad Capital Territory,Pakistan."
                                                  "I had worked as an IT intern at FATA house for six months\n\n\n",

                                              style:TextStyle(

                                                  letterSpacing: 1.0,
                                                  height: 1.9,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white
                                              ) ,

                                            ),








                                          ]

                                      )

                                  ),
                                  ),


                                  WidgetSpan(child: Text.rich(
                                      TextSpan(
                                          text: "Graphics Desgining"
                                              " Course From Tevta\n\n"
                                          ,style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                          height: 1.9,
                                          color: Colors.amber
                                      )
                                          ,
                                          children: [

                                            WidgetSpan(

                                                child: Container(
                                                  color: Colors.white12,
                                                  height: 30,
                                                  width:120,
                                                  child: Center(
                                                    child: (
                                                        Text(
                                                          "2019",
                                                          style: TextStyle(
                                                              color: Colors.deepOrange
                                                          ),
                                                        )



                                                    ),
                                                  ),

                                                )),
                                            TextSpan(

                                              text: "\nGraphics Desgining Course, Kohati"
                                                  "Bazar, Ferozepura Mohallah Kartar"
                                                  "Pura, Rawalpindi, Punjab 46000."
                                                  " Awarded with Certificate for Completing Skill Summer Camp 2019.\n\n\n",

                                              style:TextStyle(

                                                  letterSpacing: 1.0,
                                                  height: 1.9,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white
                                              ) ,

                                            ),








                                          ]

                                      )

                                  ),
                                  ),















                                ]

                            )

                        ),

                      ),
                    ),


                  ],

                ),
              ),






            ],
          ),

        ),



      ],



    );
  }
}

