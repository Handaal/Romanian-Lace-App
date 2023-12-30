// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.w), bottomRight: Radius.circular(20.w)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [                 
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/first_onBoarding.png"),
                        radius: 42.w,
                      ),
        
                      Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),
        
                          Text(
                            "مفروشات من",
                            style: TextStyle(
                              fontSize: 27.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
        
                          Text(
                            "اللاسيه الروماني",
                            style: TextStyle(
                              fontSize: 28.sp,
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
                  height: SizeConfig.defaultSize! * 17,
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Positioned(
                        top: SizeConfig.defaultSize! * 4.5,
                        left: SizeConfig.defaultSize! * 4.5,
                        child: Container(
                          height: SizeConfig.defaultSize! * 12,
                          width: SizeConfig.defaultSize! * 35,
                          decoration: BoxDecoration(
                            color: thirdColor,
                            borderRadius: BorderRadius.circular(20.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0.h, 4.0.w),
                                blurRadius: 15.0.w,
                                spreadRadius: 1.0.w,
                              )
                            ]
                          ),
                          
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0, right: 15, left: 15),
                            child: Text(
                              "إكساب الخريجات مهارات تنفيذ فن اللاسيه الروماني",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
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
                            borderRadius: BorderRadius.circular(30.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0.h, 4.0.w),
                                blurRadius: 5.w,
                                spreadRadius: 1.0.w,
                              )
                            ]
                          ),
                          child: Center(
                            child: Text(
                              "الهدف من التطبيق",
                              style: TextStyle(
                                fontSize: 19.sp,
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
                            borderRadius: BorderRadius.circular(20.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0.h, 4.0.w),
                                blurRadius: 15.0.w,
                                spreadRadius: 1.0.w,
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
                                    fontSize: 16.5.sp,
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
                                    fontSize: 16.5.sp,
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
                                    fontSize: 16.5.sp,
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
                                    fontSize: 16.5.sp,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0, right: 20, left: 10),
                                child: Text(
                                  "التدريب على انتاج المفروشات باستخدام اللاسيه الروماني",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 16.5.sp,
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
                            borderRadius: BorderRadius.circular(30.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0.h, 4.0.w),
                                blurRadius: 5.w,
                                spreadRadius: 1.0.w,
                              )
                            ]
                          ),
                          child: Center(
                            child: Text(
                              "الأهداف التعليمية",
                              style: TextStyle(
                                fontSize: 19.sp,
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
                            borderRadius: BorderRadius.circular(20.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0.h, 4.0.w),
                                blurRadius: 15.0.w,
                                spreadRadius: 1.0.w,
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
                                          borderRadius: BorderRadius.circular(20.w),
                                          color: thirdColor,
                                        ),
                                        height: SizeConfig.defaultSize! * 17,
                                        width: SizeConfig.defaultSize! * 15,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage("assets/images/second_onBoarding.png"),
                                              radius: 35.w,
                                            ),
                                            Text(
                                              "الأدوات والخامات المستخدمة",
                                              style: TextStyle(
                                                fontSize: 15.sp,
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
                                              radius: 35.w,
                                            ),
                                            Text(
                                              "التعريف باللاسيه الروماني",
                                              style: TextStyle(
                                                fontSize: 15.sp,
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
                                            radius: 35.w,
                                          ),
                                          Text(
                                            "الغرز والتقنيات المستخدمة",
                                            style: TextStyle(
                                              fontSize: 15.sp,
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
                                            radius: 35.w,
                                          ),
                                          Text(
                                            "خطوات تنفيذ اللاسيه الروماني",
                                            style: TextStyle(
                                              fontSize: 15.sp,
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
                            borderRadius: BorderRadius.circular(30.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade700,
                                offset: Offset(4.0.h, 4.0.w),
                                blurRadius: 5.w,
                                spreadRadius: 1.0.w,
                              )
                            ]
                          ),
                          child: Center(
                            child: Text(
                              "موضوعات التعلم",
                              style: TextStyle(
                                fontSize: 19.sp,
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