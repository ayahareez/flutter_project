import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:orange_project/modules/home/navHome.dart';
import 'package:orange_project/modules/profile/navProfile.dart';
import 'package:orange_project/shared/componants/componants.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 2;
  List<Widget> screens = [
    NavHome(),
    NavProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
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
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefix: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(hexColor('1ABC00')),
                    ),
                    height: 46.0,
                    width: 51.0,
                    child: Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(hexColor('1ABC00')),
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeIn,
        items: <Widget>[
          Icon(
            Icons.energy_savings_leaf_outlined,
          ),
          Icon(
            Icons.qr_code_scanner_outlined,
          ),
          Icon(
            Icons.home,
          ),
          Stack(
            children: [
              Icon(
                Icons.notifications,
              ),
            ],
          ),
          Icon(
            Icons.person_outline_sharp,
          ),
        ],
      ),
    );
  }
}
/*
currentIndex: currentIndex,
        selectedItemColor: Color(hexColor('1ABC00')),
        onTap: (index)
        {
          setState(() {
            currentIndex=index;
          });
        },



BottomNavigationBarItem(
icon: Image(
image: AssetImage('asset/images/leaf.png'),
),
label: 'Leaves',
),
BottomNavigationBarItem(
icon: Image(
image: AssetImage('asset/images/topbottom.png'),
),
label:'Scan',
),
BottomNavigationBarItem(
icon: Icon(
Icons.home,
color: Color(hexColor('000000')),
),
label:'Home',
),
BottomNavigationBarItem(
icon: Image(
image: AssetImage('asset/images/ring.png'),
),
label: 'Notification',
),
BottomNavigationBarItem(
icon: Icon(
Icons.person_outline_sharp,
color: Color(hexColor('000000')),
),
label: 'My Account',
),
],
),*/
