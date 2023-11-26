// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
          ),

          child: Column(
            children: [
    
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/first_onBoarding.png"),
                    radius: SizeConfig.defaultSize! * 13,
                  ),
                ),
    
                SizedBox(
                  height: SizeConfig.defaultSize! * 4,
                ),
    
                Text(
                  'مرحبا بك في التطبيق',
                  style: TextStyle(
                    fontSize: 30,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'الخاص بتصميم المفروشات ياستخدام اللاسيه الروماني',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
    
                SizedBox(
                  height: SizeConfig.defaultSize! * 7,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Container(
                    height: SizeConfig.defaultSize! * 7,
                    width: SizeConfig.defaultSize! * 30,
                    decoration: BoxDecoration(
                      color: firstColor,
                      borderRadius: BorderRadius.circular(40),
                      
                    ),
                    child: Center(
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
    
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/signup');
                  },
    
                  child: Container(
                    height: SizeConfig.defaultSize! * 7,
                    width: SizeConfig.defaultSize! * 30,
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.circular(40),
                      
                    ),
    
                    child: Center(
                      child: Text(
                        'إنشاء حساب جديد',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}