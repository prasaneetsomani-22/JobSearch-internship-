import 'package:flutter/material.dart';
import 'package:job_search/widgets/custom_button.dart';
import 'package:job_search/widgets/custom_textfield.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              Text('Register',
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
                title: 'Create Account',
                isbackgroundcolor: true,
              ),
              CustomButton(
                title: 'Back to Login Screen',
                isbackgroundcolor: false,onPressed: (){
                  Navigator.pop(context);
              },
              )
            ],
          ),
        ),
      ),
    ));
    ;
  }
}
