// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';

class Lesson21 extends StatelessWidget {
  const Lesson21({super.key});

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
            Container(
              width: SizeConfig.screenWidth,
              color: Colors.transparent,
              child: Stack(
                children: [
    
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 45, right: 8),
                    child: Container(
                      height: SizeConfig.defaultSize! * 740,
                      width: SizeConfig.defaultSize! * 39,
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
                            padding: const EdgeInsets.only(top: 50, left: 180),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 18,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  ":التصميم الورقي",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
    
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "عبارة عن ورقة مصمم عليها الرسم المراد تنفيذه كما في الشكل",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,                             
                                    ),
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),

                                Center(
                                  child: Container(
                                    height: SizeConfig.defaultSize! * 21,
                                    width: SizeConfig.defaultSize! * 22,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/third_onBoarding.png"),
                                        fit: BoxFit.fill
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 180),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 18,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  ":الخيوط",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    "تعتبر الخيوط من الخامات الأساسية المؤثرة على جودة ونجاح القطعة لما لها من تأثير مباشر وفعال علة قوة تحمل اللاسيه وقد تطورت الخيوط المستخدمة تبعا للتطور التكنولوجي الذي طرا على الخيوط المستخدمة في صناعة النسيج نفسها. هناك مجموعة متنوعة من الخيوط المتاحة يمكن استخدامها، حيث كانت في الماضي تستخدم خيوط القطن الرفيعة أو الكتان أو الصوف",
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
                                  padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
                                  child: Text(
                                    "ويباع الخيط في هيئة شلة ذات حجم معين يكون الخيط فيها ملفوفاً بصورة جاهزة، وتحسب الكمية الموجودة في كل شلة تبعاً للوزن وليس للطول. ويكون الوزن بالجرام-والأحجام الشائعة للشلات هي (25 أو 50) جرام – وسيتنوع طول الخيط الموجود في الكرة من نوعية خيط لأخرى، حسب سمك الخيط ذاته، ويباع الخيط أيضاً في شكل جدائل أو لفائف",
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
                                  padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
                                  child: Text(
                                    "وكلما كان الخيط أملسا وناعما والبرمات فيه متوسطة كانت نتيجة اللاسيه أفضل، ومن أشهر أنواع الخيوط المستعملة في اللاسيه هي الخيوط القطنية وهي أكثر أنواع الخيوط صلابة وألوانها ثابته وتحفظ برونقها حتى بعد تعرضها لضوء الشمس والغسيل المتكرر",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,                             
                                    ),
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),

                                Center(
                                  child: Container(
                                    height: SizeConfig.defaultSize! * 23,
                                    width: SizeConfig.defaultSize! * 24,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/second_onBoarding.png"),
                                        fit: BoxFit.fill
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 60, left: 180),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 18,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  ":أنواع الخيوط",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 3,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              color: secondColor,
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
                                "Moulin thread / خيوط المولونية",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "هي خيوط قطنية متوافرة في حزم أو شلل وهي ذات الخصلات الست يبلغ طول الخيط فيها ثمانية أمتار وكلمة مولونيه في الأصل كلمة فرنسية قديمة تعني (ناعم) وتتميز هذه الخيوط بإمكانية فصل خصلاتها حسب الرغبة وحاجة العمل أو حسب سمك النسيج المستخدم كما يمكن خلط ألوانها للحصول على ألوان جديدة",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 30,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/moulin.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              color: secondColor,
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
                                "Cotton thread / الخيوط القطنية",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "هي خيوط مصنوعة من القطن وهو من أهم الخيوط المستخدمة في أعمال اللاسيه والكروشيه وهو متعدد الأوزان وهو مريح يمكن غسله ويقبل الأصباغ وقابليته للمط قليلة، يصلح لتنفيذ الملابس الصيفية والمفارش، ويتم بيعها في شكل شلة صغيرة ملفوفة حول قطعة كرتون أو بلاستيك، وعادة يكون الطول بجانب الوزن مبيناً على الشلة",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 30,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/cotton.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              color: secondColor,
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
                                "Silk thread / الخيوط الحريرية",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "للحرير لمعان رائع وهو مريح جداً في اللبس ويبقي الجسم دافئ عندما يكون الطقس بارداً ومنعشاً عندما يكون الجو حاراً، غير أنه غالي الثمن وأقل مرونة مقارنة بالعديد من الخيوط الأخرى. يتميز الخيط الحريري بصلابته ولمعانه ويتوافر في شكل شلات وبكرات",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 30,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/silk.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              color: secondColor,
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
                                "Wool thread / الخيوط الصوفية",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "الخيط الصوف من الخيوط التي تعطي قيمة عالية للأعمال المنفذة بالكروشيه. وهو متوفر بأوزان مختلفة وأنواع كثيرة فمنها الرفيع والغليظ ومنه الموهير الذي يكون له وبره عالية ويعطي شكلاً جميلاً للعمل المنفذ",
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
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                            child: Text(
                              "وخيط الصوف لا يحتاج إلى كثير من العناية أكثر من الألياف الصناعية، ولكنه يعطي دفئاً أكثر وبعض الناس يعانون حساسية ضد الصوف. وتتراوح أوزان الخيوط الناتجة عن الجدل بين الخيوط الرفيعة التي سمكها 2 فتلة والخيط السميك المزدوج. وتعد خيوط الصوف السميك أو الخيوط المخلطة من الصوف والألياف الصناعية، تعد خيوطاً مناسبة جداً للتدريب على الغرز والتصميمات والأساليب المختلفة، ويتمتع الصوف بدرجة كبيرة من المرونة عندما يتم غزله على هيئة خيوط",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 30,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/wool.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              color: secondColor,
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
                                "Linen thread / الخيوط الكتانية",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "تعطي خيوط الكتان الطبيعي قماشاً جعداً، أنيقاً ومتيناً، لكن يمكن أن يكون في بعض الأحيان قاسياً تماماً، ولذلك فهو إذا مزج مع شيء آخر يصبح عموماً أكثر نعومة",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 30,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/linen.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 8,
                            width: SizeConfig.defaultSize! * 34,
                            decoration: BoxDecoration(
                              color: secondColor,
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
                                "Metallic thread / الخيوط المعدنية والبراق",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),
                                textAlign: TextAlign.center,                           
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "أشهر أنوعها الذهبي والفضي والنحاسي وتتوافر في شكل بكارت أو شلات، والخيوط الذهبية والفضية الرفيعة ويمكن استخدامها مع خيوط أخرى لتجميل العمل المنفذ أو ينفذ العمل كاملاً منها",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 30,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/metallic.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 8,
                            width: SizeConfig.defaultSize! * 34,
                            decoration: BoxDecoration(
                              color: secondColor,
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
                                "Thread of Synthetic and Blended / الخيوط السنثيتك والبراق",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),
                                textAlign: TextAlign.center,                           
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "وهي تضم الرايون، والأورلون، والنايلون، والإكريلك، والأسيتات وهي لا تنكمش ولا تسبب الحساسية، وهذه الصفات تجعلها مفضلة في الاختيار لتنفيذ مثل بطاطين الأطفال حديثي الولادة وملابسهم كما أنه يصلح لتنفيذ مقاعد مريحة للاسترخاء",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 30,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/synthetic.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 70),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 30,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  ":أهم خصائص خيوط اللاسيه الجيدة",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "قوة التحمل: يجب أن يتوافر في خيوط اللاسيه خاصية قوه التحمل عند الاستخدام بحيث تكون متينة وقوية ولا تتأثر بأي شد أو إجهاد قد يقع عليها",
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
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                            child: Text(
                              "ثبات البرم: لابد وان تكون البرمات ثابتة في خيط اللاسيه الجيد حتى لا يحدث لها التواء على بعضها أثناء العمل وبالتالي تسبب إعاقة أثناء عملية التنفيذ",
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
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                            child: Text(
                              "الثبات ضد الانكماش: لابد وان يكون خيط اللاسيه معالجا ومجهزا ضد الانكماش فلا يتأثر بعمليات الغسيل والكي التي تجري على القطعة المنفذة وبخاصة في الألياف الطبيعية فلا يؤثر ذلك على مظهرية اللاسيه وجودته",
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
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                            child: Text(
                              "معامل الاحتكاك: يجب أن يراعى في خيط اللاسيه درجة تحمله لعمليات الاحتكاك التي تجري اثناء عملية التنفيذ وبالتالي لا يصاب بتلف لذا لابد وان يتوافر فيه درجة نعومه في الملمس جيده",
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
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                            child: Text(
                              "ثبات اللون: يجب الا يتأثر خيط اللاسيه بالمذيبات العضوية المستخدمة أثناء التنظيف وبالمنظفات أثناء الغسيل العادي ولا بالمؤثرات الجوية المختلفة كضوء الشمس والحرارة أثناء الكي",
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
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                            child: Text(
                              "الاستطالة: لابد وأن يتوافر في خيط اللاسيه الجيد نسبة مقننه من التمدد ليكون مرنا وسهل التشكيل أثناء العمل به",
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
                            padding: const EdgeInsets.only(top: 50, left: 180),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 18,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  ":خامات التقوية",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "هي قطع من خامات التدعيم تضاف إلى القماش عبر أجزاء معينة تحتاج إلى تقوية، وهي تلك الخامات التي تستخدم بغرض تدعيم الأقمشة قبل تطريزها أما بشكل موقت حتى الانتهاء من تطريزها أو بشكل دائم لتحقيق متطلبات جمالية ووظيفية معينة",
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
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                            child: Text(
                              "وتتنوع خامات التقوية من حيث طريقة تثبيتها ما بين اللاصق وغير اللاصق، كما وأن خامات التقوية لابد وأن تتناسب في سمكها مع الأقمشة المراد تقويتها",
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
                          "الخامات المستخدمة",
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
          ],
        ),

      ),
    );
  }
}