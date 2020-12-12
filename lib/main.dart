import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:job_search/Screens/login_page.dart';
import 'package:job_search/widgets/custom_button.dart';
import 'package:job_search/widgets/custom_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
