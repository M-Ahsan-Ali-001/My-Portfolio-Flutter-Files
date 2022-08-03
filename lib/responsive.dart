import 'package:flutter/material.dart';
class Respo extends StatelessWidget {
  final Widget? mobile;
  final Widget? mobileLarge;
  final Widget? Tablet;
  final Widget Desktop;
  final Widget smallmob;




  const Respo({Key? key, this.mobile, this.mobileLarge, this.Tablet, required this.Desktop, required  this.smallmob}) : super(key: key);
  static bool isMob(BuildContext context) =>
      MediaQuery.of(context).size.width <=500;
  static bool isMobLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <=700;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width<1074;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width>=1075;
  static bool istest(BuildContext context) =>
      MediaQuery.of(context).size.width>=1400;
  static bool ist99(BuildContext context) =>
      MediaQuery.of(context).size.width<=1399;
  static bool istxt(BuildContext context) =>
      MediaQuery.of(context).size.width<=792;

  static bool ismob(BuildContext context) =>
      MediaQuery.of(context).size.width<=499;
  static bool issmall(BuildContext context) =>
      MediaQuery.of(context).size.width<=499;
  static bool ismy(BuildContext context) =>
      MediaQuery.of(context).size.width<=400;





  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (_size.width >=1075){
      return Desktop;
    } else if(_size.width>=700 && Tablet !=null){
      return Tablet!;
    }else if(_size.width>=500 && mobileLarge !=null){
      return mobileLarge!;
    }else if(_size.width>=418 && mobileLarge !=null){
      return mobile!;
    }

    else {
      return smallmob;
    }
  }
}
