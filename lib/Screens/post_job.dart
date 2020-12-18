import 'package:flutter/material.dart';
import 'package:job_search/widgets/custom_appbar.dart';
import 'package:job_search/widgets/custom_button.dart';
import 'package:job_search/widgets/custom_textfield.dart';

class PostJobPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Post Job',isbackbutton: false,),
        body: Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20),
          child: ListView(
            children: [
              CustomTextField(hinttext: 'Company Name',icon: Icons.account_balance,),
              CustomTextField(hinttext: 'Role',icon: Icons.person,),
              CustomTextField(hinttext: 'Skills',icon: Icons.create,),
              CustomTextField(hinttext: 'Minimum Education',icon: Icons.collections_bookmark,),
              CustomTextField(hinttext: 'Expected Salary',icon: Icons.attach_money,),
              CustomTextField(hinttext: 'Job Location',icon: Icons.location_on,),
              CustomTextField(hinttext: 'Working Hours',icon: Icons.timer,),
              CustomTextField(hinttext: 'Last Date To apply',icon: Icons.calendar_today,),
              CustomTextField(hinttext: 'Job Description',icon: Icons.description,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(title: 'Post Job',isbackgroundcolor: true,),
              )
            ],
          ),
        )
    );
  }
}
