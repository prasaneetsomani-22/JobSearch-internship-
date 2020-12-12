import 'package:flutter/material.dart';
import 'package:job_search/widgets/custom_appbar.dart';
import 'package:job_search/widgets/custom_button.dart';
import 'package:job_search/widgets/job_card.dart';

class JobDescribtion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Job Description'),
      body: SafeArea(
        child: ListView(
          children: [
            JobCard(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              child: CustomButton(title: 'Apply Now',isbackgroundcolor: true,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                padding: EdgeInsets.only(left: 30,right: 30,bottom: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Text('Job Description',
                          style:
                              TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut '
                          'labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco '
                              'laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                              'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat '
                              'cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                padding: EdgeInsets.only(left: 30,right: 30,bottom: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Text('About Company',
                          style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut '
                            'labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco '
                            'laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                            'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat '
                            'cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
