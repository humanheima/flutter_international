# flutterinternational

国际化的例子

### 生成arb文件的正确命令

[使用Intl包](https://book.flutterchina.club/chapter13/intl.html)上命令运行失败。

```
flutter pub run intl_translation:extract_to_arb --output-dir=l10n-arb lib/l10n/localization_intl.dart
```

###根据arb生成dart文件

```
flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/l10n/localization_intl.dart l10n-arb/intl_*.arb
```


## Getting Started




This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
