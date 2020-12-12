import 'package:flutter/material.dart';
import 'package:job_search/Screens/home.dart';
import 'package:job_search/Screens/homepage.dart';
import 'package:job_search/Screens/registration_page.dart';
import 'package:job_search/widgets/custom_button.dart';
import 'package:job_search/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Login',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                hinttext: 'Email',
                icon: Icons.email,
              ),
              CustomTextField(hinttext: 'Password', icon: Icons.lock),
              CustomButton(
                title: 'Sign In',
                isbackgroundcolor: true,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              CustomButton(
                  title: 'Create new account',
                  isbackgroundcolor: false,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
