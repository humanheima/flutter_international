import 'package:flutter/material.dart';

///Locale资源类
class DemoLocalizations {
  bool isZh = false;

  DemoLocalizations(this.isZh);

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

//Locale相关值，title为应用标题

  String get title {
    return isZh ? "Flutter应用" : "Flutter APP";
  }


}
