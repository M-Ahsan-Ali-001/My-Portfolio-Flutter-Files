import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/profile/profile_name.dart';

import 'Icons_animated/icons.dart';

class SideMenu extends StatelessWidget {
 SideMenu({
    Key? key, required this.cont1,
  }) : super(key: key);
 ScrollController cont1 ;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Profile(cont1:cont1 ,),


    );
  }
}

