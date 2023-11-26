// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class Lesson33 extends StatelessWidget {
  const Lesson33({super.key});

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
              "خطوات تنفيذ اللاسيه الروماني",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
        ),

        body: ListView(
          children: [

            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),

            Container(
              width: SizeConfig.screenWidth,
              color: Colors.transparent,
              child: Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 45, right: 15),
                    child: Container(
                      height: SizeConfig.defaultSize! * 148,
                      width: SizeConfig.defaultSize! * 38,
                      decoration: BoxDecoration(
                        color: secondColor,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade700,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                          )
                        ]
                      ),
                      
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 80.0, right: 10, left: 10),
                            child: Text(
                              "هناك مجموعة من العوامل أو الاعتبارات التي يجب مراعاتها عند تنفيذ فن اللاسيه الروماني",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                            child: Text(
                              "1-	إختيار التصميم الزخرفي الملائم للغرض من الاستخدام",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 80),
                            child: Text(
                              "2-	إختيار خامة مناسبة من خامات التقوية",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "3-	تثبيت التصميم على الخامة المقواة من الأطراف باستخدام السراجة لتجنب التأثير على معالم التصميم",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "4-	أثناء تثبيت شريط اللاسيه على التصميم الورقي يتم الضغط على الزويا ليأخذ الشكل المطلوب",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "5-	يراعى تعدد نقاط البداية والنهاية في بعض التصميمات",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "6-	يراعى مناسبة سمك الخيط المستخدم في التثبيت مع سمك البطانة المستخدمة",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "7-	تستخدم إبر تطريز رفيعة للمحافظة على الخيط من التنسيل أثناء التنفيذ",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "8-	تستخدم في عملية تثبيت التصميم على الخامة المقواة خيوط حياكة عادية بلون مخالف للون خيط اللاسيه والخلفية لضمان عمليه الفك",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "9-	يراعى أن تكون عمليةالتثبيت على حافتي شريط اللاسيه للحفاظ عليه من التلف",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "10- يجب التأكد من أن عملية التثبيت تتضمن الخامة المقواة وورقة التصميم معاً",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "11-	يراعى عدم عمل عقدة في خيط الكتون بارليه المستخدم في التنفيذ، حيث أن تثبيت بداية الخيط تكون داخل شريط اللاسيه بطريقة معكوسة من نفس المكان",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "12-	يفضل أن تكون خيوط الكتون بارليه المستخدمة في التشبيك من نفس لون قيطان اللاسيه",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "13-	أن تكون غرزة العروة أو الفستونات مشدودة وذلك للمحافظة على شكل التصميم بعد فكه عن طريق ضبط قوة شد هذه الغرزة أثناء تنفيذها",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "14-	يتم البدء في تنفيذ أي غرزة من غرز اللاسيه من بداية تكوين الوحدة المراد تنفيذ الغرزة بها حيث يكون حافتي اللاسيه في أقرب نقطة لهما وبالتالي تبدأ عملية التنفيذ من الداخل للخارج",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
                            child: Text(
                              "15-	عند استخدام خيط متدرج في عمل غرز اللاسيه من المفضل البدء بالدرجة الغامقة ليتدرج اللون للفاتح ليظهر التصميم بشكل جذاب",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 50),
                            child: Text(
                              "16-	أن يكون تنفيذ غرز اللاسيه في اتجاه واحد",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,                             
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                            ),
                          ),

                        ],
                      ),                     
                    ),
                  ),

                  Positioned(
                    left: SizeConfig.defaultSize! * 1,
                    top: SizeConfig.defaultSize! * 3,
                    child: Container(                       
                      height: SizeConfig.defaultSize! * 8,
                      width: SizeConfig.defaultSize! * 39,
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
                          "الشروط الواجب مراعاتها عند تنفيذ فن اللاسيه",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,                           
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
        
      )
    );
  }
}