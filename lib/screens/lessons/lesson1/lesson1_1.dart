// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class Lesson11 extends StatelessWidget {
  const Lesson11({super.key});

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

        body: Column(
          children: [

            SizedBox(
              height: SizeConfig.defaultSize! * 1,
            ),

            Container(
              width: SizeConfig.screenWidth,
              color: Colors.transparent,
              child: Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 45),
                    child: Container(
                      height: SizeConfig.defaultSize! * 33,
                      width: SizeConfig.defaultSize! * 37,
                      decoration: BoxDecoration(
                        color: secondColor,
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
                      
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35.0, right: 20, left: 20),
                        child: Text(
                          "اللاسيه الروماني عبارة عن الزخرفة بأشرطة خاصة تسمى أشرطة اللاسيه وهذه الأشرطة يتم تثبيتها على خطوط الرسم الموجود في التصميم بحيث تترابط مع بعضها بواسطة غرزة العروة (الحواجز أو الأعمدة) التي تمر بالخيوط ثم يطرز عليها بغرزة الفستون وتنفذ المساحات الداخلية للتصميم بغرزة الدانتيلا الخاصة بالاسيه، وهذا الفن يستخدم في إحداث التزيين وعمل الزخارف للملابس والمفروشات المختلفة",
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,                             
                          ),
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                        ),
                      ),                     
                    ),
                  ),

                  Positioned(
                    left: SizeConfig.defaultSize! * 17,
                    top: SizeConfig.defaultSize! * 2,
                    child: Container(                       
                      height: SizeConfig.defaultSize! * 5,
                      width: SizeConfig.defaultSize! * 23,
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
                          "فن اللاسيه الروماني",
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
              height: SizeConfig.defaultSize! * 2,
            ),

            Container(
              height: SizeConfig.defaultSize! * 33,
              width: SizeConfig.defaultSize! * 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/aaaaaaaaaa.png"),
                  fit: BoxFit.fill
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),

            ),         
          ],
        ),
      ),
    );
  }
}