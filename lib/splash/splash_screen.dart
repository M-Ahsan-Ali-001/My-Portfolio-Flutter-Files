import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/counter/count.dart';
import 'package:m_ahsan_ali_portfolio/home_page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override

  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _tohome();
  }
  _tohome() async{
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 100,
              child:  TweenAnimationBuilder(tween: Tween<double>(begin:1,end: 10 ),duration: Duration(milliseconds: 1500),builder: (context,double value, child)=>Column(
                children: [
                  CircularStepProgressIndicator(
                    totalSteps: 10,
                    currentStep: value.toInt(),
                    selectedColor: Colors.redAccent,
                    unselectedColor: Colors.grey[200],
                    selectedStepSize: 8,
                    unselectedStepSize: 5,
                    width: 200,
                    gradientColor: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.cyan, Colors.orangeAccent],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text((value.toInt() *10).toString()+"%",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic

                    ),
                    ),
                  )
                ],
              ),),
          ),
          ),
          Center(
            child: Text("You're About To Discover my Amazing Portfolio",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic

              ),
              textAlign: TextAlign.center,
            ),
          )



        ],
      ),
    );
  }
}
