import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/Bio/bioo.dart';


class GRid_About extends StatelessWidget {
  const GRid_About({
    Key? key, this.c_count=2, this.c_a_s=1, this.m_a_s=2, this.ratio=3.5, this.pad=10,
  }) : super(key: key);
  final int c_count;
  final double c_a_s;
  final double m_a_s;
  final double ratio;
  final double pad;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: GridView.count(
        crossAxisCount: c_count,
        crossAxisSpacing: c_a_s,

        mainAxisSpacing: m_a_s,
        primary: false,
        childAspectRatio: ratio,
        shrinkWrap: true,
        padding:  EdgeInsets.all(pad),


        children: <Widget>[

          Container(

            //height: 10,
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







              ],
            ),
          ),

          Container(

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
    );
  }
}
