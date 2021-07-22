import 'package:auth/presentation/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:auth/presentation/core/style.dart';

import '../../injection.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInProvider(),
      onGenerateRoute: sl<Sailor>().generator(),
      navigatorKey: sl<Sailor>().navigatorKey,
      theme: AppTheme.getThemeData(),
    );
  }
}
