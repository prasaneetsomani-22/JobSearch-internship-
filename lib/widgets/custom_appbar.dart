import 'package:flutter/material.dart';


Widget CustomAppBar({bool isbackbutton=false, String title='title'}){
  return AppBar(
    titleSpacing: 20,
    leading: isbackbutton?Icon(Icons.arrow_back,color: Colors.black,size: 40,):null,
    shadowColor: Colors.black,
    elevation: 20,
    automaticallyImplyLeading: false,
    toolbarHeight: 75,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(title,style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
  );
}


