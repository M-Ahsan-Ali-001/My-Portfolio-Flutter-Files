import 'dart:html';

import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/Button%20Creator/buttons_sidemenu.dart';
import 'package:m_ahsan_ali_portfolio/Icons_animated/icons.dart';
import 'package:m_ahsan_ali_portfolio/main_body/main_sxreen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../responsive.dart';

class Profile extends StatelessWidget {
 Profile({
    Key? key, required this.cont1,
  }) : super(key: key);
  ScrollController cont1;

  @override
  final ScrollController _cont = ScrollController();


  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.22,
          child: Container(
            // color: Color(0xFF0C1014),
            child: Column(
              children: [
                Spacer(flex: 2,),
                CircleAvatar(
                  radius: 76,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/m.jpg"),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Muhammad Ahsan Ali",
                      style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0



                      ) ,),
                  ),
                ),
                Spacer(flex: 1,),
                Icons_animated(),




                Spacer(flex: 2,),
              ],
            ),

          ),

          //testst




        ),
        SizedBox(height: 10,),
        Expanded(child: SingleChildScrollView(
          controller: _cont,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    if(!Respo.istest(context))
                      Respo(Desktop: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          ButtonCreator(icon: Icon(Icons.home_outlined,size: 28,color: Colors.blue,),str: "  Home",controller:cont1,pos:cont1.position.minScrollExtent,),

                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.perm_identity_sharp,size: 28,color: Colors.blue,),str: "  About",controller: cont1,pos:cont1.position.minScrollExtent+260,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.contact_page_outlined,size: 28,color: Colors.blue,),str: "  Resume",controller: cont1,pos:cont1.position.minScrollExtent+1370,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.account_balance_wallet_outlined,size: 28,color: Colors.blue,),str: "  Portfolio",controller: cont1,pos:cont1.position.minScrollExtent+3000,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.storage,size: 28,color: Colors.blue,),str: "  Services",controller: cont1,pos:cont1.position.minScrollExtent+4600,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.mail_outline_sharp,size: 28,color: Colors.blue,),str: "  Contact",controller: cont1,pos:cont1.position.maxScrollExtent,),
                          SizedBox(height: 130,),


                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 29.0),
                            child: Container(
                              color: Colors.white10,
                              height: 35,
                              width: 130,
                              child: InkWell(
                                onTap: (){

                                  AnchorElement anc = new AnchorElement(href: 'assets/M_Ahsan_ali_CV.pdf');
                                  anc.download = "M_Ahsan_ali_CV.pdf";
                                  anc.click();
                                  AnchorElement anc1 = new AnchorElement(href: 'assets/M_Ahsan_ali_Resume.pdf');
                                  anc1.download = "M_Ahsan_ali_Resume.pdf";
                                  anc1.click();

                                },

                                hoverColor: Colors.black,
                                splashColor: Colors.redAccent,
                                child: Center(child: Text("Download CV",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white60
                                  ),

                                ),),

                              ),
                            ),
                          )












                        ],


                      ),
                          Tablet:  Column(
    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    ButtonCreator(icon: Icon(Icons.home_outlined,size: 28,color: Colors.blue,),str: "  Home",controller:cont1,pos:cont1.position.minScrollExtent,),

    SizedBox(height: 20,),
    ButtonCreator(icon: Icon(Icons.perm_identity_sharp,size: 28,color: Colors.blue,),str: "  About",controller: cont1,pos:cont1.position.minScrollExtent+260,),
    SizedBox(height: 20,),
    ButtonCreator(icon: Icon(Icons.contact_page_outlined,size: 28,color: Colors.blue,),str: "  Resume",controller: cont1,pos:cont1.position.minScrollExtent+1370,),
    SizedBox(height: 20,),
    ButtonCreator(icon: Icon(Icons.account_balance_wallet_outlined,size: 28,color: Colors.blue,),str: "  Portfolio",controller: cont1,pos:cont1.position.minScrollExtent+3000,),
    SizedBox(height: 20,),
    ButtonCreator(icon: Icon(Icons.storage,size: 28,color: Colors.blue,),str: "  Services",controller: cont1,pos:cont1.position.minScrollExtent+4600,),
    SizedBox(height: 20,),
    ButtonCreator(icon: Icon(Icons.mail_outline_sharp,size: 28,color: Colors.blue,),str: "  Contact",controller: cont1,pos:cont1.position.maxScrollExtent,),
    SizedBox(height: 130,),


    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 29.0),
    child: Container(
    color: Colors.white10,
    height: 35,
    width: 130,
    child: InkWell(
    onTap: (){

      AnchorElement anc = new AnchorElement(href: 'assets/M_Ahsan_ali_CV.pdf');
      anc.download = "M_Ahsan_ali_CV.pdf";
      anc.click();
      AnchorElement anc1 = new AnchorElement(href: 'assets/M_Ahsan_ali_Resume.pdf');
      anc1.download = "M_Ahsan_ali_Resume.pdf";
      anc1.click();


    },

    hoverColor: Colors.black,
    splashColor: Colors.redAccent,
    child: Center(child: Text("Download CV",
    style: TextStyle(
    fontSize: 16,
    color: Colors.white60
    ),

    ),),

    ),
    ),
    )












    ],


    )


                          ,
                      mobileLarge:  Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          ButtonCreator(icon: Icon(Icons.home_outlined,size: 28,color: Colors.blue,),str: "  Home",controller:cont1,pos:cont1.position.minScrollExtent,),

                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.perm_identity_sharp,size: 28,color: Colors.blue,),str: "  About",controller: cont1,pos:cont1.position.minScrollExtent+200,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.contact_page_outlined,size: 28,color: Colors.blue,),str: "  Resume",controller: cont1,pos:cont1.position.minScrollExtent+1340,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.account_balance_wallet_outlined,size: 28,color: Colors.blue,),str: "  Portfolio",controller: cont1,pos:cont1.position.minScrollExtent+3900,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.storage,size: 28,color: Colors.blue,),str: "  Services",controller: cont1,pos:cont1.position.minScrollExtent+4700,),
                          SizedBox(height: 20,),
                          ButtonCreator(icon: Icon(Icons.mail_outline_sharp,size: 28,color: Colors.blue,),str: "  Contact",controller: cont1,pos:cont1.position.maxScrollExtent,),
                          SizedBox(height: 130,),


                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 29.0),
                            child: Container(
                              color: Colors.white10,
                              height: 35,
                              width: 130,
                              child: InkWell(
                                onTap: (){
                                  AnchorElement anc = new AnchorElement(href: 'assets/M_Ahsan_ali_CV.pdf');
                                  anc.download = "M_Ahsan_ali_CV.pdf";
                                  anc.click();
                                  AnchorElement anc1 = new AnchorElement(href: 'assets/M_Ahsan_ali_Resume.pdf');
                                  anc1.download = "M_Ahsan_ali_Resume.pdf";
                                  anc1.click();},

                                hoverColor: Colors.black,
                                splashColor: Colors.redAccent,
                                child: Center(child: Text("Download CV",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white60
                                  ),

                                ),),

                              ),
                            ),
                          )












                        ],


                      ),
                        mobile:  Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            ButtonCreator(icon: Icon(Icons.home_outlined,size: 28,color: Colors.blue,),str: "  Home",controller:cont1,pos:cont1.position.minScrollExtent,),

                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.perm_identity_sharp,size: 28,color: Colors.blue,),str: "  About",controller: cont1,pos:cont1.position.minScrollExtent+150,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.contact_page_outlined,size: 28,color: Colors.blue,),str: "  Resume",controller: cont1,pos:cont1.position.minScrollExtent+1500,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.account_balance_wallet_outlined,size: 28,color: Colors.blue,),str: "  Portfolio",controller: cont1,pos:cont1.position.minScrollExtent+4100,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.storage,size: 28,color: Colors.blue,),str: "  Services",controller: cont1,pos:cont1.position.minScrollExtent+6450,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.mail_outline_sharp,size: 28,color: Colors.blue,),str: "  Contact",controller: cont1,pos:cont1.position.maxScrollExtent,),
                            SizedBox(height: 130,),


                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 29.0),
                              child: Container(
                                color: Colors.white10,
                                height: 35,
                                width: 130,
                                child: InkWell(
                                  onTap: (){

                                    AnchorElement anc = new AnchorElement(href: 'assets/M_Ahsan_ali_CV.pdf');
                                    anc.download = "M_Ahsan_ali_CV.pdf";
                                    anc.click();
                                    AnchorElement anc1 = new AnchorElement(href: 'assets/M_Ahsan_ali_Resume.pdf');
                                    anc1.download = "M_Ahsan_ali_Resume.pdf";
                                    anc1.click();
                                  },

                                  hoverColor: Colors.black,
                                  splashColor: Colors.redAccent,
                                  child: Center(child: Text("Download CV",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white60
                                    ),

                                  ),),

                                ),
                              ),
                            )












                          ],


                        ),
                        smallmob:  Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            ButtonCreator(icon: Icon(Icons.home_outlined,size: 28,color: Colors.blue,),str: "  Home",controller:cont1,pos:cont1.position.minScrollExtent,),

                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.perm_identity_sharp,size: 28,color: Colors.blue,),str: "  About",controller: cont1,pos:cont1.position.minScrollExtent+180,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.contact_page_outlined,size: 28,color: Colors.blue,),str: "  Resume",controller: cont1,pos:cont1.position.minScrollExtent+1850,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.account_balance_wallet_outlined,size: 28,color: Colors.blue,),str: "  Portfolio",controller: cont1,pos:cont1.position.minScrollExtent+4400,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.storage,size: 28,color: Colors.blue,),str: "  Services",controller: cont1,pos:cont1.position.minScrollExtent+6650,),
                            SizedBox(height: 20,),
                            ButtonCreator(icon: Icon(Icons.mail_outline_sharp,size: 28,color: Colors.blue,),str: "  Contact",controller: cont1,pos:cont1.position.maxScrollExtent,),
                            SizedBox(height: 130,),


                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 29.0),
                              child: Container(
                                color: Colors.white10,
                                height: 35,
                                width: 130,
                                child: InkWell(
                                  onTap: (){

                                    AnchorElement anc = new AnchorElement(href: 'assets/M_Ahsan_ali_CV.pdf');
                                    anc.download = "M_Ahsan_ali_CV.pdf";
                                    anc.click();
                                    AnchorElement anc1 = new AnchorElement(href: 'assets/M_Ahsan_ali_Resume.pdf');
                                    anc1.download = "M_Ahsan_ali_Resume.pdf";
                                    anc1.click();
                                  },

                                  hoverColor: Colors.black,
                                  splashColor: Colors.redAccent,
                                  child: Center(child: Text("Download CV",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white60
                                    ),

                                  ),),

                                ),
                              ),
                            )












                          ],


                        ),



                      )


                    ,
                    // Column(
                    //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //
                    //     ButtonCreator(icon: Icon(Icons.home_outlined,size: 28,color: Colors.blue,),str: "  Home",controller:cont1,pos:cont1.position.minScrollExtent,),
                    //
                    //     SizedBox(height: 20,),
                    //     ButtonCreator(icon: Icon(Icons.perm_identity_sharp,size: 28,color: Colors.blue,),str: "  About",controller: cont1,pos:cont1.position.minScrollExtent+200,),
                    //     SizedBox(height: 20,),
                    //     ButtonCreator(icon: Icon(Icons.contact_page_outlined,size: 28,color: Colors.blue,),str: "  Resume",controller: cont1,pos:cont1.position.minScrollExtent+1500,),
                    //     SizedBox(height: 20,),
                    //     ButtonCreator(icon: Icon(Icons.account_balance_wallet_outlined,size: 28,color: Colors.blue,),str: "  Portfolio",controller: cont1,pos:cont1.position.minScrollExtent+4100,),
                    //     SizedBox(height: 20,),
                    //     ButtonCreator(icon: Icon(Icons.storage,size: 28,color: Colors.blue,),str: "  Services",controller: cont1,pos:cont1.position.minScrollExtent+4600,),
                    //     SizedBox(height: 20,),
                    //     ButtonCreator(icon: Icon(Icons.mail_outline_sharp,size: 28,color: Colors.blue,),str: "  Contact",controller: cont1,pos:cont1.position.maxScrollExtent,),
                    //     SizedBox(height: 130,),
                    //
                    //
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 29.0),
                    //       child: Container(
                    //         color: Colors.white10,
                    //         height: 35,
                    //         width: 130,
                    //         child: InkWell(
                    //           onTap: (){},
                    //
                    //           hoverColor: Colors.black,
                    //           splashColor: Colors.redAccent,
                    //           child: Center(child: Text("Download CV",
                    //           style: TextStyle(
                    //               fontSize: 16,
                    //               color: Colors.white60
                    //           ),
                    //
                    //           ),),
                    //
                    //         ),
                    //       ),
                    //     )
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //   ],
                    //
                    //
                    // ),

                    if(Respo.istest(context))
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                        InkWell(
                        onTap: (){

                        cont1.animateTo(cont1.position.minScrollExtent,
                        duration: Duration(seconds: 3), curve: Curves.easeOut);



                        },
                        child: RichText(text: TextSpan(
                        children: [

                        WidgetSpan(child:Icon(Icons.home_outlined,size: 28,color: Colors.blue,), ),

                        TextSpan(
                        style: TextStyle(color: Colors.white,fontSize: 18),
                        text: " Home"

                        )
                        ]

                        )),
                        ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){

                              cont1.animateTo(cont1.position.minScrollExtent+410,
                                  duration: Duration(seconds: 3), curve: Curves.easeOut);



                            },
                            child: RichText(text: TextSpan(
                                children: [

                                  WidgetSpan(child:Icon(Icons.perm_identity_sharp,size: 28,color: Colors.blue,), ),

                                  TextSpan(
                                      style: TextStyle(color: Colors.white,fontSize: 18),
                                      text: "  About"

                                  )
                                ]

                            )),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){

                              cont1.animateTo(cont1.position.minScrollExtent+1340,
                                  duration: Duration(seconds: 3), curve: Curves.easeOut);



                            },
                            child: RichText(text: TextSpan(
                                children: [

                                  WidgetSpan(child:Icon(Icons.contact_page_outlined,size: 28,color: Colors.blue,), ),

                                  TextSpan(
                                      style: TextStyle(color: Colors.white,fontSize: 18),
                                      text: "  Resume"

                                  )
                                ]

                            )),
                          ),

                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){

                              cont1.animateTo(cont1.position.minScrollExtent+2300,
                                  duration: Duration(seconds: 3), curve: Curves.easeOut);



                            },
                            child: RichText(text: TextSpan(
                                children: [

                                  WidgetSpan(child:Icon(Icons.account_balance_wallet_outlined,size: 28,color: Colors.blue,), ),

                                  TextSpan(
                                      style: TextStyle(color: Colors.white,fontSize: 18),
                                      text: "  Portfolio"

                                  )
                                ]

                            )),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){

                              cont1.animateTo(cont1.position.minScrollExtent+3500,
                                  duration: Duration(seconds: 3), curve: Curves.easeOut);



                            },
                            child: RichText(text: TextSpan(
                                children: [

                                  WidgetSpan(child:Icon(Icons.storage,size: 28,color: Colors.blue,), ),

                                  TextSpan(
                                      style: TextStyle(color: Colors.white,fontSize: 18),
                                      text: "  Services"

                                  )
                                ]

                            )),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){

                              cont1.animateTo(cont1.position.maxScrollExtent,
                                  duration: Duration(seconds: 3), curve: Curves.easeOut);



                            },
                            child: RichText(text: TextSpan(
                                children: [

                                  WidgetSpan(child:Icon(Icons.mail_outline_sharp,size: 28,color: Colors.blue,), ),

                                  TextSpan(
                                      style: TextStyle(color: Colors.white,fontSize: 18),
                                      text: "  Contact"

                                  )
                                ]

                            )),
                          ),

                          SizedBox(height: 130,),


                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 29.0),
                            child: Container(
                              color: Colors.white10,
                              height: 35,
                              width: 130,
                              child: InkWell(
                                onTap: (){

                                  AnchorElement anc = new AnchorElement(href: 'assets/M_Ahsan_ali_CV.pdf');
                                  anc.download = "M_Ahsan_ali_CV.pdf";
                                  anc.click();
                                  AnchorElement anc1 = new AnchorElement(href: 'assets/M_Ahsan_ali_Resume.pdf');
                                  anc1.download = "M_Ahsan_ali_Resume.pdf";
                                  anc1.click();
                                },

                                hoverColor: Colors.black,
                                splashColor: Colors.redAccent,
                                child: Center(child: Text("Download CV",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white60
                                  ),

                                ),),

                              ),
                            ),
                          )












                        ],


                      ),


                  ],
                ),
              )
            ],
          ),
        )),

      ],
    );
  }
}


