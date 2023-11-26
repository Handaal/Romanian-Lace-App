// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:app_2/core/widgets/constants.dart';
import 'package:app_2/screens/about.dart';
import 'package:app_2/screens/home.dart';
import 'package:app_2/screens/policy.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar (int index){
    setState(() {
      _selectedIndex = index;
    }); 
  }

  final List<Widget> _pages = [
    HomePage(),
    AboutPage(),
    PolicyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: GNav(
            backgroundColor: kMainColor,
            color: Colors.white,
            activeColor: kMainColor,
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.all(15),
            gap: 5,
            onTabChange: (index) {
              _navigateBottomBar(index);
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'الرئيسية',
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
              GButton(
                icon: Icons.info,
                text: 'عن التطبيق',
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
              GButton(
                icon: Icons.privacy_tip,
                text: 'القائم بالتنفيذ',
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}