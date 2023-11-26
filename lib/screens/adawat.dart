// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
            padding: const EdgeInsets.all(10),
            child: Text(
              "الأدوات والخامات المستخدمة",
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
                                padding: const EdgeInsets.only(top: 35.0, right: 5, left: 5),
                                child: Text(
                                  "الأدوات والخامات المستخدمة في فن اللاسيه الروماني",
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
                                    image: AssetImage("assets/images/cccccc.png"),
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
                              "الدرس الثاني",
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
                          height: SizeConfig.defaultSize! * 19,
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
                                padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                                child: Text(
                                  "التعرف علي الأدوات والخامات المستخدمة في تنفيذ اللاسيه الروماني",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                                child: Text(
                                  "شرح الأدوات والخامات المستخدمة في فن اللاسيه الروماني",
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
                        padding: const EdgeInsets.only(left: 8, right: 8, top: 45),
                        child: Container(
                          height: SizeConfig.defaultSize! * 37,
                          width: SizeConfig.defaultSize! * 40,
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
                                padding: const EdgeInsets.only(top: 45),
                                child: Container(
                                  height: SizeConfig.defaultSize! * 14,
                                  width: SizeConfig.defaultSize! * 38,
                                  decoration: BoxDecoration(
                                    color: secondColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                
                                  child: Stack(
                                    children: [

                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/lesson21');
                                          },
                                          child: Container(
                                            height: SizeConfig.defaultSize! * 4,
                                            width: SizeConfig.defaultSize! * 11,
                                            decoration: BoxDecoration(
                                              color: kMainColor,
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "المزيد",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      Row(
                                        children: [
                                                                    
                                          Padding(
                                            padding: const EdgeInsets.only(left: 40, top: 10),
                                            child: Container(
                                              height: SizeConfig.defaultSize! * 10,
                                              width: SizeConfig.defaultSize! * 25,
                                              color: Colors.transparent,
                                              child: Column(
                                                children: [
                                                                            
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 15.0, left: 0),
                                                    child: Text(
                                                      "الخامات المستخدمة في تنفيذ اللاسيه الروماني",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                        color: kMainColor,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                                            
                                                ],
                                              ),
                                            ),
                                          ),
                                                                    
                                          SizedBox(
                                            width: SizeConfig.defaultSize! * 1,
                                          ),
                                                                    
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Container(
                                              height: SizeConfig.defaultSize! * 7,
                                              width: SizeConfig.defaultSize! * 7,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("assets/images/123.png"),
                                                  fit: BoxFit.fill
                                                ),
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                                                      
                                            ),
                                          ),                                                        
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  height: SizeConfig.defaultSize! * 14,
                                  width: SizeConfig.defaultSize! * 38,
                                  decoration: BoxDecoration(
                                    color: secondColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                
                                  child: Stack(
                                    children: [

                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, "/lesson22");
                                          },
                                          child: Container(
                                            height: SizeConfig.defaultSize! * 4,
                                            width: SizeConfig.defaultSize! * 11,
                                            decoration: BoxDecoration(
                                              color: kMainColor,
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "المزيد",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      Row(
                                        children: [
                                                                    
                                          Padding(
                                            padding: const EdgeInsets.only(left: 40, top: 10),
                                            child: Container(
                                              height: SizeConfig.defaultSize! * 10,
                                              width: SizeConfig.defaultSize! * 25,
                                              color: Colors.transparent,
                                              child: Column(
                                                children: [
                                                                            
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 15.0, left: 0),
                                                    child: Text(
                                                      "شرح الأدوات والخامات المستخدمة في فن اللاسيه الروماني",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                        color: kMainColor,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                                            
                                                ],
                                              ),
                                            ),
                                          ),
                                                                    
                                          SizedBox(
                                            width: SizeConfig.defaultSize! * 1,
                                          ),
                                                                    
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Container(
                                              height: SizeConfig.defaultSize! * 7,
                                              width: SizeConfig.defaultSize! * 7,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("assets/images/123.png"),
                                                  fit: BoxFit.fill
                                                ),
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                                                      
                                            ),
                                          ),                                                        
                                        ],
                                      ),
                                    ],
                                  ),
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
                              "موضوعات الدرس",
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