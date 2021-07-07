import 'package:flutter/material.dart';
import 'package:school_payment_report/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF407BFF),
        accentColor: Color(0xFF85A9F8),
        fontFamily: 'CrimsonText',
      ),
      home: LoginPage(),
    );
  }
}
