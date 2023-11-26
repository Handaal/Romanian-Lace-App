// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: kMainColor,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(8),
            child: Container(
              height: 1.0,
              color: Colors.grey.withOpacity(0.5),
            )
          ),
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "الغرز والتقنيات المستخدمة",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
        ),

        body: ListView(
          children: [
            Column(
              children: [

                SizedBox(
                  height: SizeConfig.defaultSize! * 3,
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
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
                                padding: const EdgeInsets.only(top: 35.0, right: 10, left: 170),
                                child: Text(
                                  "الغرز والتقنيات",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                  maxLines: 1,
                                ),
                              ),
        
                              SizedBox(
                                height: SizeConfig.defaultSize,
                              ),
        
                              Container(
                                height: SizeConfig.defaultSize! * 20,
                                width: SizeConfig.defaultSize! * 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/rabe3.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
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
                              "الدرس الرابع",
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
                  height: SizeConfig.defaultSize! * 3,
                ),
        
                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 45),
                        child: Container(
                          height: SizeConfig.defaultSize! * 22,
                          width: SizeConfig.defaultSize! * 35,
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
                                padding: const EdgeInsets.only(top: 35, left: 140, right: 10),
                                child: Text(
                                  "تقارن بين أنواع غرز الاسيه",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 1, left: 140, right: 10),
                                child: Text(
                                  "تميز بين خطوات عمل الغرز",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 1, left: 130, right: 10),
                                child: Text(
                                  "تنفذ خطوات عمل الغرز بدقة",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 1, left: 27, right: 10),
                                child: Text(
                                  "تستخدم ألوان الخيوط المناسبة لشكل الغرزة",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 1, left: 85, right: 10),
                                child: Text(
                                  "تنهى الغرز والتقنيات بطريقة سليمة",
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
                              "أهداف الدرس",
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
                  height: SizeConfig.defaultSize! * 3,
                ),

                Container(
                  width: SizeConfig.screenWidth,
                  color: Colors.transparent,
                  child: Stack(
                    children: [                    
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 45),
                        child: Container(
                          height: SizeConfig.defaultSize! * 47,
                          width: SizeConfig.defaultSize! * 38,
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
                          
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Column(
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/lesson42');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "غرز الحشو",
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
                                        Navigator.pushNamed(context, '/lesson41');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "غرزة الأعمدة",
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

                                SizedBox(
                                  height: SizeConfig.defaultSize! * 1,
                                ),
                          
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/lesson44');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "غرزة العنكبوت",
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
                                        Navigator.pushNamed(context, '/lesson43');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "غرزة بروسل",
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

                                SizedBox(
                                  height: SizeConfig.defaultSize! * 1,
                                ),
                          
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/lesson46');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "الغرزة الاسبانية(هولي)",
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
                                        Navigator.pushNamed(context, '/lesson45');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "غرزة الفنيسية",
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

                                SizedBox(
                                  height: SizeConfig.defaultSize! * 1,
                                ),
                          
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/lesson48');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "غرزة العجلة",
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
                                        Navigator.pushNamed(context, '/lesson47');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: thirdColor,
                                          ),
                                          height: SizeConfig.defaultSize! * 6,
                                          width: SizeConfig.defaultSize! * 17,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "غرزة انجلترا",
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

                                SizedBox(
                                  height: SizeConfig.defaultSize! * 1,
                                ),
                          
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/lesson49');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10, left: 170),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: thirdColor,
                                      ),
                                      height: SizeConfig.defaultSize! * 6,
                                      width: SizeConfig.defaultSize! * 17,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "غرزة روسية بسيطة",
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
                          ),
                          
                        ),
                      ),
                
                      Positioned(
                        left: SizeConfig.defaultSize! * 21,
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
                              "موضوعات الدرس",
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