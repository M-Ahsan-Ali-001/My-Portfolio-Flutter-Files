import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/Button%20Creator/serv_butt.dart';

import '../responsive.dart';

class services_with_text extends StatelessWidget {
  const services_with_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          if(Respo.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Spacer(flex: 2,),
              service_button(icon: Icon(Icons.cloud_circle,size: 40,color: Colors.deepOrange,),txt: "Develop Websites",),
              service_button(icon: Icon(Icons.phone_android,size: 38,color: Colors.deepOrange),txt: "Develop  Mobile Apps",)
              ,service_button(icon: Icon(Icons.computer,size: 38,color: Colors.deepOrange),txt: "Develop Desktop Apps",)
              ,//Spacer(flex: 2,)

            ],
          ),






          if(Respo.isTablet(context)

          )
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Spacer(flex: 2,),
                service_button(icon: Icon(Icons.cloud_circle,size: 40,color: Colors.deepOrange,),txt: "Develop \n   Websites",),
                service_button(icon: Icon(Icons.phone_android,size: 38,color: Colors.deepOrange),txt: "Develop  \n   Mobile \n   Apps",)
                ,service_button(icon: Icon(Icons.computer,size: 38,color: Colors.deepOrange),txt: "Develop \n   Desktop \n   Apps",)
                ,//Spacer(flex: 2,)

              ],
            ),
        ],
      ),
    );
  }
}
