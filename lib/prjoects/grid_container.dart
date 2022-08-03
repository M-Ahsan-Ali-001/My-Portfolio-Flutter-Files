import 'package:flutter/material.dart';
import 'package:m_ahsan_ali_portfolio/prjoects/projects_data.dart';
import 'package:url_launcher/url_launcher.dart';

class Project_sheet extends StatelessWidget {
  const Project_sheet({
    Key? key, required this.data,
  }) : super(key: key);
  final proj_data data;
  @override
  Future<void> _launchUrl(_url) async {
    var url =Uri.parse(_url);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }

  }
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.white12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.lead,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle( fontWeight: FontWeight.bold,letterSpacing: 1.0,color: Colors.amber),

          ),
          Spacer(),
          //SizedBox(height: 50,),
          Text(data.long_text,
            maxLines:4,//Respo.isMobLarge(context) ?3 :4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5,color: Color(0xBDA8A888)),

          ),
          Spacer(),
          //SizedBox(height: 25,),
          TextButton(onPressed: (){
            _launchUrl(data.url);

          }, child: Text("Github  -->",style: TextStyle(
            color: Colors.deepOrange


          ),))


        ],
      ),



    );
  }
}

