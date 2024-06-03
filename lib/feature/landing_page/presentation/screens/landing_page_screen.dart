
import 'package:flutter/material.dart';
import 'package:sift_loan/core/appbar/appbar.dart';

class LandingPage extends StatefulWidget{
  const LandingPage({super.key});

@override
  LandingPageState createState()=> LandingPageState();
}

class LandingPageState extends State<LandingPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: SiftLoanAppBar(title: "Dashboard",shouldPop: true),
    body: SizedBox(),
   );
  }

}