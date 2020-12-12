import 'package:flutter/material.dart';
import 'package:job_search/Screens/homepage.dart';
import 'package:job_search/Screens/post_job.dart';
import 'package:job_search/Screens/user_account.dart';
import 'package:job_search/widgets/bottom_appbar.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabno = 0;
  PageController _controller;

  @override
  void initState(){
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            onPageChanged: (num){
              setState(() {
                tabno = num;
              });
            },
            // physics: NeverScrollableScrollPhysics(),
            children: [
              HomePage(),
              PostJobPage(),
              UserAccount()
            ],
          ),
        ),
        BottomAppbar(tabno: tabno,onPressed: (num){
          _controller.animateToPage(num, duration: Duration(microseconds: 3000), curve: Curves.easeInOut);
        },)
      ],
    ));
  }
}
