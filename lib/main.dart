import 'package:auth/presentation/core/app.dart';
import 'package:auth/router.dart';
import 'package:flutter/material.dart';

import 'injection.dart';

void main() {
  configureInjection();
  Routes.createRoutes();
  runApp(App());
}