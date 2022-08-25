import 'package:flutter/material.dart';
import 'package:la_vie/layout/homeScreen/homeScreen.dart';
import 'package:la_vie/modules/loginAndSignUp/login_screen.dart';
import 'package:la_vie/modules/notificationScreen/notificationScreen.dart';

void main(){

runApp(myapp());
}
class myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:homeScreen(),

    );
  }
}
