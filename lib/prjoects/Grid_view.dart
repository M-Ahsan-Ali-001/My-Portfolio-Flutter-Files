
import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/prjoects/projects_data.dart';

import 'grid_container.dart';
class GRIDit extends StatelessWidget {
  const GRIDit({
    Key? key, this.crossAxisCount=3, this.childAspectRatio=1.3,
  }) : super(key: key);
  final int crossAxisCount ;
  final double childAspectRatio ;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio ,
            crossAxisSpacing: 20.0,

            mainAxisSpacing: 20.0),
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context,index)=>Project_sheet(data: my_proj[index]));
  }
}