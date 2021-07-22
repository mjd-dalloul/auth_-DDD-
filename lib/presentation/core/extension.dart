import 'package:flutter/material.dart';

import 'app_localizations.dart';


extension Translate on BuildContext {
  String translate(String word) => AppLocalizations.of(this).translate(word);

  String get language => AppLocalizations.of(this).locale.languageCode;

}

extension ThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension StringExt on String {
  bool get hasOnlyWhiteSpace => trim().isEmpty && isNotEmpty;

  bool get isEmptyOrNull => this == null ? true : isEmpty;

  bool get isUrlImage => (isNotEmpty ?? false) && (contains('http') || contains('https'));

  Uri toUri() => Uri.parse(this);

  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}