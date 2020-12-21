import 'package:flutter/material.dart';
import 'package:expense_tracker/locator.dart';
import 'package:expense_tracker/ui/router.dart' as router;
import 'package:expense_tracker/ui/shared/app_colors.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: backgroundColor,
        accentColor: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
