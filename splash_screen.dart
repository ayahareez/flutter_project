
import 'dart:async';

import 'package:flutter/material.dart';

import '../../layout/home_login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context)=> Login_Orange(),
        ),
      );
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image(
              image: AssetImage('asset/images/Lavie.png'),
            ),
            Image(
              image: AssetImage('asset/images/la.png'),
            ),
          ],
        ),
      ),
    );
  }
}
