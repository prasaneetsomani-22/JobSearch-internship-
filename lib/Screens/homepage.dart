import 'package:flutter/material.dart';
import 'package:job_search/Screens/searchpage.dart';
import 'package:job_search/widgets/custom_appbar.dart';
import 'package:job_search/widgets/job_card.dart';

import '../constants.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Job here....',
                hintStyle: Constants.textfieldinputstyle,
                contentPadding: EdgeInsets.all(12),
              ),
            ),
            GestureDetector(
              onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
            },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
              ),
            )
          ],
        ),
        shadowColor: Colors.black,
        elevation: 20,
        automaticallyImplyLeading: false,
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Color(0xffDCDCDC),
      body: SafeArea(
        child: ListView(
          children: [
            JobCard(),
            JobCard(),
            JobCard(),
            JobCard(),
            JobCard(),
          ],
        )
      )
    );
  }
}
