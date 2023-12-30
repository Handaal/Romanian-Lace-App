// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kMainColor,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(8),
            child: Container(
              height: 1.0.h,
              color: Colors.grey.withOpacity(0.5),
            )
          ),
          title: Center(
            child: Text(
              "القائم بالتنفيذ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
              ),
            ),
          ),
        ),
        
        body: ListView(
          children: [
            Column(
              
              children: [
        
                SizedBox(
                  height: SizeConfig.defaultSize! * 6,
                ),
                
                
                
                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: SizeConfig.defaultSize! * 27,
                          width: SizeConfig.defaultSize! * 37,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                padding: const EdgeInsets.only(left: 150, top: 60),
                                child: Text(
                                  "محاضر بقسم تصميم ازياء",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 117),
                                child: Text(
                                  "كلية التصاميم - جامعة القصيم",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 210, top: 5),
                                child: Text(
                                  ":وسائل التواصل",
                                  style: TextStyle(
                                    color: firstColor,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 162),
                                child: Row(
                                  children: [
                              
                                    Text(
                                      "0506619164",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: kMainColor
                                      ),
                                    ),
                              
                                    SizedBox(
                                      width: SizeConfig.defaultSize! * 1,
                                    ),
                              
                                    Text(
                                      ":واتساب",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: kMainColor
                                      ),
                                    ),
                          
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 55),
                                child: Row(
                                  children: [
                                
                                    Text(
                                      "mhdieb@qu.edu.sa",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: kMainColor
                                      ),
                                    ),
                                
                                    SizedBox(
                                      width: SizeConfig.defaultSize! * 1,
                                    ),
                                
                                    Text(
                                      ":البريد الإلكتروني",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: kMainColor
                                      ),
                                    ),
                                                        
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Container(                       
                          height: SizeConfig.defaultSize! * 5,
                          width: SizeConfig.defaultSize! * 30,
                          decoration: BoxDecoration(
                            color: thirdColor,
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
                              "أ/ مشاعل علي الهديب",
                              style: TextStyle(
                                fontSize: 20.sp,
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
                  height: SizeConfig.defaultSize! * 6,
                ),
        
                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: SizeConfig.defaultSize! * 27,
                          width: SizeConfig.defaultSize! * 37,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                              Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top: 60, left: 100),
                                    child: Text(
                                      "أستاذ الملابس والنسيج المساعد",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,                             
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 90),
                                    child: Text(
                                      "كلية تربية نوعية - جامعة أسيوط",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,                             
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 210, top: 5),
                                    child: Text(
                                      ":وسائل التواصل",
                                      style: TextStyle(
                                        color: firstColor,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,                             
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 153),
                                    child: Row(
                                      children: [
                                  
                                        Text(
                                          "01013304403",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: kMainColor
                                          ),
                                        ),
                                  
                                        SizedBox(
                                          width: SizeConfig.defaultSize! * 1,
                                        ),
                                  
                                        Text(
                                          ":واتساب",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: kMainColor
                                          ),
                                        ),
                              
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 32),
                                    child: Row(
                                      children: [
                                    
                                        Text(
                                          "ragaaegp@yahoo.com",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: kMainColor
                                          ),
                                        ),
                                    
                                        SizedBox(
                                          width: SizeConfig.defaultSize! * 1,
                                        ),
                                    
                                        Text(
                                          ":البريد الإلكتروني",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: kMainColor
                                          ),
                                        ),
                                                            
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                
                      Center(
                        child: Container(                       
                          height: SizeConfig.defaultSize! * 5,
                          width: SizeConfig.defaultSize! * 30,
                          decoration: BoxDecoration(
                            color: thirdColor,
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
                              "د/ رجاء مصطفى محمد حسن",
                              style: TextStyle(
                                fontSize: 22,
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
                  height: SizeConfig.defaultSize! * 6,
                ),
        
                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: SizeConfig.defaultSize! * 14,
                          width: SizeConfig.defaultSize! * 37,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                padding: const EdgeInsets.only(top: 20, left: 120),
                                child: Row(
                                  children: [
                              
                                    Text(
                                      "د/ أسماء محمود سيد",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,                             
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                              
                                    SizedBox(
                                      width: SizeConfig.defaultSize! * 1,
                                    ),
                              
                                    Text(
                                      ":تصميم",
                                      style: TextStyle(
                                        color: firstColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900,                             
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, left: 115),
                                child: Row(
                                  children: [
                              
                                    Text(
                                      "م/ شريف أسامة أحمد",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,                             
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                              
                                    SizedBox(
                                      width: SizeConfig.defaultSize! * 1,
                                    ),
                              
                                    Text(
                                      ":برمجة",
                                      style: TextStyle(
                                        color: firstColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900,                             
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ],
                                ),
                              ),

                              
                              
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: SizeConfig.defaultSize! * 5,
                ),
        
              ],
            ),
          ],
        ),
      ),
    );
  }
}