import 'package:flutter/material.dart';

class About_text extends StatelessWidget {
  const About_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Text("Hi! I'm Muhammad Ahsan Ali, I'm a Computer Science student, I love to find out about development and "
          "cultivate portable and web applications. PCs have held "
          "a deep rooted interest for me. Which began as an interest in utilizing them formed into a developing"
          " craving to comprehend how an assortment of basic thoughts and parts can cooperate to create an element as mind boggling and versatile as a PC.",
        style: TextStyle(
            fontSize: 16,
            //letterSpacing: 1.0,
            wordSpacing: 1,
            height: 1.5
        ),),
    );
  }
}
