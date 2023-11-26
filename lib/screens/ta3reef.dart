// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
            padding: const EdgeInsets.all(25),
            child: Text(
              "التعريف باللاسيه الروماني",
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
                                padding: const EdgeInsets.only(top: 35.0, right: 10, left: 90),
                                child: Text(
                                  "التعريف باللاسيه الروماني وتاريخه",
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
                                    image: AssetImage("assets/images/bbbbbbbb.png"),
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
                              "الدرس الأول",
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
                          height: SizeConfig.defaultSize! * 13,
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
                                padding: const EdgeInsets.only(top: 35, left: 118),
                                child: Text(
                                  "التعريف بفن اللاسيه الروماني",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,                             
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100, top: 3),
                                child: Text(
                                  "شرح تاريخ فن اللاسيه الروماني",
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
                          height: SizeConfig.defaultSize! * 43,
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
                                padding: const EdgeInsets.only(top: 40),
                                child: Container(
                                  height: SizeConfig.defaultSize! * 16,
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
                                            Navigator.pushNamed(context, "/lesson11");
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
                                            padding: const EdgeInsets.only(left: 40, top: 20),
                                            child: Container(
                                              height: SizeConfig.defaultSize! * 10,
                                              width: SizeConfig.defaultSize! * 25,
                                              color: Colors.transparent,
                                              child: Column(
                                                children: [
                                                                            
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 0.0, left: 95),
                                                    child: Text(
                                                      "فن اللاسيه الروماني",
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight: FontWeight.bold,
                                                        color: kMainColor,
                                                      ),
                                                      maxLines: 1,
                                                    ),
                                                  ),
                                                                            
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(
                                                      "اللاسيه الروماني عبارة عن الزخرفة بأشرطة خاصة تسمي أشرطة اللاسيه",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: thirdColor,
                                                      ),
                                                      textAlign: TextAlign.end,
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
                                            padding: const EdgeInsets.only(top: 15),
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
                                  height: SizeConfig.defaultSize! * 16,
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
                                            Navigator.pushNamed(context, "/lesson12");
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
                                            padding: const EdgeInsets.only(left: 40, top: 20),
                                            child: Container(
                                              height: SizeConfig.defaultSize! * 10,
                                              width: SizeConfig.defaultSize! * 25,
                                              color: Colors.transparent,
                                              child: Column(
                                                children: [
                                                                            
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 0.0, left: 13),
                                                    child: Text(
                                                      "شرح تاريخ فن اللاسيه الروماني",
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight: FontWeight.bold,
                                                        color: kMainColor,
                                                      ),
                                                      maxLines: 1,
                                                    ),
                                                  ),
                                                                            
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(
                                                      "انتشر فن الشرائط المجمعة (لاسيه) في جميع أنحاء العالم ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: thirdColor,
                                                      ),
                                                      textAlign: TextAlign.end,
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
                                            padding: const EdgeInsets.only(top: 15),
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