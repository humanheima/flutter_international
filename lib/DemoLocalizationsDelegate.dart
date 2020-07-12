import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterinternational/DemoLocalizations.dart';

///实现Delegate类
///Delegate类的职责是在Locale改变时加载新的Locale资源，所以它有一个load方法，
///Delegate类需要继承自LocalizationsDelegate类
///
class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  @override

  ///是否支持某个Local
  bool isSupported(Locale locale) {
    return ['en', 'zh'].contains(locale.languageCode);
  }

  @override
  bool shouldReload(LocalizationsDelegate<DemoLocalizations> old) {
    return false;
  }

  @override
  Future<DemoLocalizations> load(Locale locale) {
    print("DemoLocalizationsDelegate $locale");
    return SynchronousFuture<DemoLocalizations>(
        DemoLocalizations(locale.languageCode == "zh"));
  }
}
