import 'dart:async';

import 'package:flutter/material.dart';

import '../modules/login/login.dart';
import '../modules/signup/signup.dart';

class Login_Orange extends StatefulWidget {

  @override
  State<Login_Orange> createState() => _Login_State();
}

class _Login_State extends State<Login_Orange> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //  appBar: AppBar(),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage('asset/images/tree.png'),
                    height: 100.0,
                    width: 100.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image(
                      image: AssetImage('asset/images/La Vie2.png'),
                    ),
                    Image(
                      image: AssetImage('asset/images/la2.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsetsDirectional.only(
                  top:20.0,
                ),
                child: TabBar(
                  tabs: [
                    Image(
                      image: AssetImage('asset/images/Login.png'),
                      height: 30.0,
                    ),
                    Image(
                      image: AssetImage('asset/images/Sign up.png'),
                      height: 30.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      Log_ (),
                      Sign_(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
