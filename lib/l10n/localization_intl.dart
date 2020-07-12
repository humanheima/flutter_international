import 'package:flutter/material.dart';
import 'package:flutterinternational/l10n/messages_all.dart';
import 'package:intl/intl.dart';

class IntlDemoLocalizations {
  static Future<IntlDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return new IntlDemoLocalizations();
    });
  }

  static IntlDemoLocalizations of(BuildContext context) {
    return Localizations.of<IntlDemoLocalizations>(
        context, IntlDemoLocalizations);
  }

  String get title {
    return Intl.message('Flutter APP',
        name: 'title', desc: 'Title for the Demo application');
  }

  remainingEmailsMessage(int howMany) => Intl.plural(howMany,
      zero: 'There are no emails left',
      one: 'There is $howMany email left',
      other: 'There are $howMany emails left',
      name: "remainingEmailsMessage",
      args: [howMany],
      desc: "How many emails remain after archiving.",
      examples: const {'howMany': 42, 'userName': 'Fred'});
}

//Locale代理类
class IntlDemoLocalizationsDelegate
    extends LocalizationsDelegate<IntlDemoLocalizations> {
  IntlDemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'zh'].contains(locale.languageCode);
  }

  @override
  bool shouldReload(LocalizationsDelegate<IntlDemoLocalizations> old) {
    return false;
  }

  @override
  Future<IntlDemoLocalizations> load(Locale locale) {
    return IntlDemoLocalizations.load(locale);
  }
}
