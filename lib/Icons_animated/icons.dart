import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Icons_animated extends StatelessWidget {
  const Icons_animated({
    Key? key,
  }) : super(key: key);

  @override
  Future<void> _launchUrl(_url) async {
    var url =Uri.parse(_url);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }

  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Container(
            height: 35,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white12,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(2000),


            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: IconButton(onPressed: (){


              _launchUrl('https://github.com/M-Ahsan-Ali-001');

              },
                  hoverColor: Colors.black,

                  iconSize: 28,
                  splashRadius: 18,
                  splashColor: Colors.redAccent,




                  icon: Image.asset("assets/git.png")),
            ),
          ),

          Container(
            height: 35,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white12,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(2000),


            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: IconButton(onPressed: (){
                  
                  _launchUrl('https://twitter.com/Muhamma74801109');
                },
                    hoverColor: Colors.blue,

                    iconSize: 20,
                    splashRadius: 18,
                    splashColor: Colors.black,





                    icon: Image.asset("assets/t.png")),

              ),
            ),
          ),
          Container(
            height: 35,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white12,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(2000),


            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: IconButton(onPressed: (){

                _launchUrl('https://www.linkedin.com/in/muhamm-ahsan-ali-a4983a216');

              },
                hoverColor: Colors.deepPurple,

                // iconSize: 1,
                splashRadius: 18,
                splashColor: Colors.black,




                icon: Image.asset("assets/IN.png"),
                iconSize: 10,
              ),
            ),
          ),

          Container(
            height: 35,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white12,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(2000),


            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: IconButton(onPressed: (){

                _launchUrl('https://www.facebook.com/profile.php?id=100006419886081');
              },
                hoverColor: Colors.blue,

                // iconSize: 1,
                splashRadius: 18,
                splashColor: Colors.black,




                icon: Image.asset("assets/fac.png"),
                iconSize: 10,
              ),
            ),
          ),

          Container(
            height: 35,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white12,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(2000),


            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: IconButton(onPressed: (){

                _launchUrl('https://www.instagram.com/iamanonymous_005/');
              },
                hoverColor:Colors.deepOrange ,


                // iconSize: 1,
                splashRadius: 18,
                splashColor: Colors.black,




                icon: Image.asset("assets/inst.png"),
                iconSize: 10,
              ),
            ),
          ),

          Spacer(),
        ],
      ),



    );
  }
}