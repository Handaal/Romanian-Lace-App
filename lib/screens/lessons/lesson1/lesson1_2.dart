// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace


import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class Lesson12 extends StatelessWidget {
  const Lesson12({super.key});

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
                          height: SizeConfig.defaultSize! * 126,
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
                                padding: const EdgeInsets.only(top: 40),
                                child: Container(
                                  height: SizeConfig.defaultSize! * 30,
                                  width: SizeConfig.defaultSize! * 34,
                                  decoration: BoxDecoration(
                                    color: secondColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
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

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: SizeConfig.defaultSize! * 20,
                                  width: SizeConfig.defaultSize! * 34,
                                  decoration: BoxDecoration(
                                    color: secondColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "ظهرت البدايات الأولى لأسلوب اللاسيه الروماني الذي يجمع بواسطة غرزة التشبيك في عام 2130ق.م حيث ظهرت بعض المشغولات في الفن المصري القديم خلال الاسرة الثانية عشر ووجدت الشبكات المعقودة في الاسرة الثامنة عشر",
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

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: SizeConfig.defaultSize! * 27,
                                  width: SizeConfig.defaultSize! * 34,
                                  decoration: BoxDecoration(
                                    color: secondColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "وعثر على العديد من أغطية الرأس من الطراز المصري الروماني بجهه الفيوم التي يرجع تاريخها الى الفترة من القرن الثالث الى السابع قبل الميلاد والتي تتضمن الكثير من العقد المختلفة والتي تنتمي إلى أعمال اللاسيه الروماني، كذلك انتشر فن اللاسيه الروماني في مصر بداية من القرن التاسع عشر كموروث ثقافي وخاصة مع انتشار الجاليات الأرمنية والقبرصيه واليونانية بمصر",
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

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: SizeConfig.defaultSize! * 39,
                                  width: SizeConfig.defaultSize! * 34,
                                  decoration: BoxDecoration(
                                    color: secondColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "بالرغم من وجود جدل حول أصل الأساليب الأولية لفن اللاسيه نظرا لانتشارها في العديد من حضارات الشرق القديمة الا ان الجميع يؤكد على وصول الأساليب الأولية والمواد الخاصة باللاسيه من مصر إلى بلاد المغرب العربي ثم إلى الأندلس (أسبانيا) بعد الفتح العربي، وبدخول هذه الأساليب إلى فينيسا وإلى قبرص تحولت فينسيا إلى أعظم مدن العالم في فن اللاسيه حيث تبلورت معالمه وتشكلت أهم الغرز المستعملة فيه كما استعملت شرائط الحرير الملون والخيوط المعدنية في انتاج مكملات للزي بالإضافة الى المفارش والستائر",
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

                            ],
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
                              "تاريخ اللاسيه الروماني",
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

                // sowar yaba f shakl row (scrolllzz)

                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "بعض المفارش المنفذة باللاسيه الروماني",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),

                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),

                Container(
                  height: SizeConfig.defaultSize! * 15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [

                      SizedBox(
                        width: SizeConfig.defaultSize! * 2,
                      ),

                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: SizeConfig.defaultSize! * 14,
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
                      ),

                      SizedBox(
                        width: SizeConfig.defaultSize! * 2,
                      ),
                  
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: SizeConfig.defaultSize! * 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/fourth_onBoarding.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: SizeConfig.defaultSize! * 2,
                      ),
                  
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: SizeConfig.defaultSize! * 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/splash.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: SizeConfig.defaultSize! * 2,
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: SizeConfig.defaultSize! * 8,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}