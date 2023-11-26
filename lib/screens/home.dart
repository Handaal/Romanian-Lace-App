// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [

                Container(
                  height: SizeConfig.defaultSize! * 13,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [                 
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/first_onBoarding.png"),
                        radius: 45,
                      ),
        
                      Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),
        
                          Text(
                            "مفروشات من",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
        
                          Text(
                            "اللاسيه الروماني",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
        
                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
        
                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 45),
                        child: Container(
                          height: SizeConfig.defaultSize! * 12,
                          width: SizeConfig.defaultSize! * 35,
                          decoration: BoxDecoration(
                            color: thirdColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0,
                              )
                            ]
                          ),
                          
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0, right: 15, left: 80),
                            child: Text(
                              "إكساب الخريجات مهارات تنفيذ فن اللاسيه الروماني",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                      ),
                
                      Positioned(
                        left: SizeConfig.defaultSize! * 20,
                        top: SizeConfig.defaultSize! * 2,
                        child: Container(                       
                          height: SizeConfig.defaultSize! * 5,
                          width: SizeConfig.defaultSize! * 20,
                          decoration: BoxDecoration(
                            color: firstColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 5,
                                spreadRadius: 1.0,
                              )
                            ]
                          ),
                          child: Center(
                            child: Text(
                              "الهدف من التطبيق",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),                           
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        
                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
        
                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 45),
                        child: Container(
                          height: SizeConfig.defaultSize! * 30,
                          width: SizeConfig.defaultSize! * 37,
                          decoration: BoxDecoration(
                            color: secondColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0,
                              )
                            ]
                          ),
                          
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0, right: 10, left: 47),
                                child: Text(
                                  "التعرف علي فن اللاسيه الروماني و تاريخه",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0, right: 10, left: 35),
                                child: Text(
                                  "التعريف باللاسيه الروماني وخطوات تنفيذه",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0, right: 20, left: 10),
                                child: Text(
                                  "شرح الأدوات والخامات التي تستخدم في تنفيذ فن اللاسيه الروماني",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0, right: 10, left: 10),
                                child: Text(
                                  "تنفيذ الغرز المستخدمة في فن اللاسيه الروماني",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0, right: 20, left: 10),
                                child: Text(
                                  "التدريب على انتاج المفروشات باستخدام اللاسيه الروماني",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          
                        ),
                      ),
                
                      Positioned(
                        left: SizeConfig.defaultSize! * 20,
                        top: SizeConfig.defaultSize! * 2,
                        child: Container(                       
                          height: SizeConfig.defaultSize! * 5,
                          width: SizeConfig.defaultSize! * 20,
                          decoration: BoxDecoration(
                            color: firstColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 5,
                                spreadRadius: 1.0,
                              )
                            ]
                          ),
                          child: Center(
                            child: Text(
                              "الأهداف التعليمية",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),                           
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),

                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 45),
                        child: Container(
                          height: SizeConfig.defaultSize! * 45,
                          width: SizeConfig.defaultSize! * 37,
                          decoration: BoxDecoration(
                            color: secondColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0,
                              )
                            ]
                          ),
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/adawat');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: thirdColor,
                                        ),
                                        height: SizeConfig.defaultSize! * 17,
                                        width: SizeConfig.defaultSize! * 15,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage("assets/images/second_onBoarding.png"),
                                              radius: 40,
                                            ),
                                            Text(
                                              "الأدوات والخامات المستخدمة",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/ta3reef');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: thirdColor,
                                        ),
                                        height: SizeConfig.defaultSize! * 17,
                                        width: SizeConfig.defaultSize! * 15,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage("assets/images/first_onBoarding.png"),
                                              radius: 40,
                                            ),
                                            Text(
                                              "التعريف باللاسيه الروماني",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/ghoraz');
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: thirdColor,
                                      ),
                                      height: SizeConfig.defaultSize! * 17,
                                      width: SizeConfig.defaultSize! * 15,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage("assets/images/fourth_onBoarding.png"),
                                            radius: 40,
                                          ),
                                          Text(
                                            "الغرز والتقنيات المستخدمة",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/khatawat');
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: thirdColor,
                                      ),
                                      height: SizeConfig.defaultSize! * 17,
                                      width: SizeConfig.defaultSize! * 15,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage("assets/images/splash.png"),
                                            radius: 40,
                                          ),
                                          Text(
                                            "خطوات تنفيذ اللاسيه الروماني",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ],
                          ),
                          
                        ),
                      ),
                
                      Positioned(
                        left: SizeConfig.defaultSize! * 20,
                        top: SizeConfig.defaultSize! * 2,
                        child: Container(                       
                          height: SizeConfig.defaultSize! * 5,
                          width: SizeConfig.defaultSize! * 20,
                          decoration: BoxDecoration(
                            color: firstColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 5,
                                spreadRadius: 1.0,
                              )
                            ]
                          ),
                          child: Center(
                            child: Text(
                              "موضوعات التعلم",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),                           
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: SizeConfig.defaultSize! * 3,
                ),

              ],
            ),
          ],
        ),
      )
    );
  }
}