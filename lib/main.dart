import 'package:flutter/material.dart';
import 'package:whats_app_template/theme.dart';
import 'package:whats_app_template/ui/screens/welcome_screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildLightTheme(),
      home: const WelcomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
