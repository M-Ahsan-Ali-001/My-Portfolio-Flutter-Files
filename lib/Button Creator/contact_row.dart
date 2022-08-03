import 'package:flutter/material.dart';

import '../responsive.dart';
import 'contaxt-But.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(!Respo.isMobLarge(context))
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            button_Contact(icon: Icon(Icons.mail_outline,color: Colors.deepOrange,),
              head: "Email:",
              txt: "muhammadahsanali120@gmail.com",
            ),
            button_Contact(icon: Icon(Icons.phone,color: Colors.deepOrange,),
              head: "Phone:",
              txt: "(+92)-336-5306-746",
            )
          ],
        ),
        if(Respo.isMobLarge(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              button_Contact(icon: Icon(Icons.mail_outline,color: Colors.deepOrange,),
                head: "Email:",
                txt: "muhammadahsanali\n120@gmail.com",
                size: 12,
              ),
              button_Contact(icon: Icon(Icons.phone,color: Colors.deepOrange,),
                head: "Phone:",
                txt: "(+92)-336-5306-746",
                size: 12,
              )
            ],
          ),

      ],
    );
  }
}
