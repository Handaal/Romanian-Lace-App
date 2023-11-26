// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson22 extends StatefulWidget {
  const Lesson22({super.key});

  @override
  State<Lesson22> createState() => _Lesson22State();
}

class _Lesson22State extends State<Lesson22> {

  final videoURL = "https://youtu.be/l7mCWdsfr2g";

  late YoutubePlayerController _controller;

  @override
  void initState() {

    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    
    super.initState();
  }


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
                      height: SizeConfig.defaultSize! * 1000,
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
                            padding: const EdgeInsets.only(top: 60, left: 30),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 34,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  "أولا: الإبر (إبر الخياطة- إبر الكروشيه)",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 4,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 20,
                            decoration: BoxDecoration(
                              color: kMainColor,
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
                                "إبر الخياطة",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),                           
                              ),
                            ),
                          ),
    
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "صنعت أول إبرة خياطة من العظام أو قرون الحيوانات وتم اكتشاف الإبر في قبور المصرين والمنازل المنحوتة قديما، بعض الإبر من عظم السمك والخشب والعاج وكانت سميكة وثقيلة، وفي العصور الحديثة تم اكتشاف أن الهنود الحمر والقبائل البدائية كانت تستعمل العظام الرفيعة الموجودة في أجنحة الطيور كإبر لخياطة الملابس أما بالنسبة للرومان فقد استخدموا الإبر المصنوعة من البروز والعاج في العصر الحديدي",
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
                            padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                            child: Text(
                              "وتتنوع الإبر من حيث ثخانتها وطولها وثقبها وكذلك من حيث سنها، و إختيار الإبر يعتمد على أنواع الغرز وسمك الخيط، والرقم على الحجم فكلما زاد الرقم كلما كانت الإبر أكثر سمكا وكلما قل كانت الإبر رفيعة وتوجد أواع مختلفة من الإبر وهي",
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
                            height: SizeConfig.defaultSize! * 3,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 35,
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
                                "Sharp Needle / أ/ الابر حادة السن",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "وهي إبر الحياكة عموما وتحتوي على ثقب صغير مستدير وتوجد أيضا إبرة ذات سن حاد، ولكن أقصر وتفضل في أسلوب التضريب والتطريز",
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
                            height: SizeConfig.defaultSize! * 27,
                            width: SizeConfig.defaultSize! * 27,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/ebarr1.png"),
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
                            width: SizeConfig.defaultSize! * 35,
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
                                "Tapestry Needle / ب/ إبر التابستري",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "فهي إبر لها سن غير حاد مع طول الثقب وتدخل بين خيوط النسيج كأقمشة الإيتامين وشغل الكنفاه",
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
                            height: SizeConfig.defaultSize! * 27,
                            width: SizeConfig.defaultSize! * 27,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/ebarr2.png"),
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
                            width: SizeConfig.defaultSize! * 35,
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
                                "Short Darners / ج/ الابر الحادة",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "تكون متوسطة الطول ولها ثقب صغير وتستخدم عادة في الحياكة اليدوية",
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
                            height: SizeConfig.defaultSize! * 27,
                            width: SizeConfig.defaultSize! * 27,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/ebarr3.png"),
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
                            width: SizeConfig.defaultSize! * 35,
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
                                "Chenille Needle / د/ إبر شنايل",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "وتتميز بأنها كبيرة وسميكة وثقب طويل وسن حاد تستخدم مع الخيوط السميكة",
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
                            height: SizeConfig.defaultSize! * 27,
                            width: SizeConfig.defaultSize! * 33,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/ebarr4.png"),
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
                            padding: const EdgeInsets.only(left: 150),
                            child: Container(                       
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 20,
                              decoration: BoxDecoration(
                                color: secondColor,
                                borderRadius: BorderRadius.circular(15),
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
                                  ":شروط اختيار الابر",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),                           
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 216, right: 10),
                            child: Text(
                              "أن تكون من نوع جيد",
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
                            padding: const EdgeInsets.only(left: 90, right: 10, top: 8),
                            child: Text(
                              "أن تكون مصقولة ولامعة خالية من الصدأ",
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
                            padding: const EdgeInsets.only(left: 30, right: 18, top: 8),
                            child: Text(
                              "أن تكون ذات سن حاد ومدبب يسهل انزلاقه في النسيج",
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
                              "أن تكون عيد الإبر بيضاوية أو مستديرة لكي ينزلق فيها الخيط بسهولة أثناء اللضم",
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
                              "أن تكون متناسبة في الحجم مع سمك النسيج ونوع الخيط. وتحفظ الإبر عادة في أكياس من ورق يقي الإبر من الصدأ",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                                            
                              ),
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              
                            ),
                          ),

                          //////////////////////////////////////////////////

                          SizedBox(
                            height: SizeConfig.defaultSize! * 8,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 20,
                            decoration: BoxDecoration(
                              color: kMainColor,
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
                                "إبر الكروشية",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "الكروشيه هو الحياكة أو لف الخيط بالإبرة الصغيرة وهي إبر خاصة لها شكل معكوف تسمى عادة بالسنارة، وفن الكروشيه من الفنون اليدوية السهلة والممتعة وهو من أقدم الحرف اليدوية",
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
                            padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                            child: Text(
                              "هو إحدى طرق أشغال الإبرة حيث يتم تكوين عراوي منفردة متشابكة بعضها مع بعض بواسطة إبرة الكروشيه، ويستخدم فيها خيط واحد مستمر إلى نهاية العمل، يتداخل هذا الخيط على شكل عراوي ليكوّن سلاسل، وبها يمكن تنفيذ نماذج متعددة، تتفاوت أشكالها وسمكها ومدى حبكتها، ورقتها",
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
                            height: SizeConfig.defaultSize! * 3,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 130),
                            child: Container(                       
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 22,
                              decoration: BoxDecoration(
                                color: secondColor,
                                borderRadius: BorderRadius.circular(15),
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
                                  ":التعريف بإبر الكروشية",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),                           
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "يستخدم في تنفيذ الكروشيه إبرة خاصة معكوفة الرأس، تسمى إبرة الكروشيه، وهي عبارة عن عصا صغيرة ينتهي أحد طرفيها بخطاف للإمساك بالخيط ويكون في وسط جسمها جزء مسطح ليكون بمثابة مقبض ليسهل الإمساك بها وعادة يكون مقاس الإبرة مكتوب على هذا الجزء المسطح وتتوفر إبر الكروشيه بأحجام ومقاسات متنوعة تقاس وفقاً للمقياس المتري",
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
                            height: SizeConfig.defaultSize! * 28,
                            width: SizeConfig.defaultSize! * 36,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/krosheh1.png"),
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
                            padding: const EdgeInsets.only(left: 130),
                            child: Container(                       
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 22,
                              decoration: BoxDecoration(
                                color: secondColor,
                                borderRadius: BorderRadius.circular(15),
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
                                  ":أنواع إبر الكروشية",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 4,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 35,
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
                                "أ/ إبر كروشية مصنوعة من الصلب",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "تتراوح مقاسات إبرة الكروشيه المصنوعة من الصلب من (0,4 إلى3,5) مليمتر من حيث حجم الإبرة أو تتراوح بين 16,00 بنظام القياس الأمريكي، وتكون هذه الإبر مقاساتها صغيرة ورفيعة جداً وتستعمل للأعمال الدقيقة مثل المفارش أو شرائط الدانتيل، باستخدام الخيوط القطنية الرفيعة",
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
                            height: SizeConfig.defaultSize! * 27,
                            width: SizeConfig.defaultSize! * 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/krosheh2.png"),
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
                            width: SizeConfig.defaultSize! * 35,
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
                                "ب/ إبر كروشية مصنوعة من الألمونيوم أو البلاستيك",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),
                                textAlign: TextAlign.center,                           
                              ),                             
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "تتوفر إبر الكروشيه المصنوعة من الألمونيوم أو البلاستيك بمقاسات تتراوح بين (2,5إلى 19) مليمتراً من حيث حجم الإبرة أو تتوافر بمقاسات منB إلىS بنظام القياس الأمريكي",
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
                            padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                            child: Text(
                              "وتعد إبر الألمونيوم الأكثر انتشاراً وهي قوية وناعمة وخفيفة الوزن، ومعظم ما ينفذ من قطع الكروشيه يتم باستخدام إبر الألمنيوم، لأن الإبر البلاستيكية سريعة الكسر ضعيفة، غير ناعمة، وغير منتظمة كإبر الألمونيوم، ويتم استخدام إبر الألمونيوم والبلاستيك لجميع أنواع الخيوط الأكثر سمكاً من الخيوط القطنية الرفيعة",
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: SizeConfig.defaultSize! * 22,
                                width: SizeConfig.defaultSize! * 19,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/krosheh3.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),

                              Container(
                                height: SizeConfig.defaultSize! * 22,
                                width: SizeConfig.defaultSize! * 19,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/krosheh4.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ],
                          ),
                          
                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Container(                       
                            height: SizeConfig.defaultSize! * 5,
                            width: SizeConfig.defaultSize! * 35,
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
                                "ج/ إبر كروشية مصنوعة من الخشب",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "أما إبر الخشب على الرغم من أنها ذات قيمة فقط في الأحجام الكبيرة جداً إلا أنه أمكن تصنيعها أخيراً بأحجام دقيقة ذات خطاف رفيع، وتصنع من أخشاب شجر جوز الهند ذات حافة داخلية مستديرة وتصنع من خشب الورد أيضاً ومن الأخشاب الصلبة الأخرى ولذلك فهي تبدو نافعة أيضاً وجميلة، ولكنها ليست كقوة الإبر الألمونيوم أو الإبر الصلب ويمكن أن تنثني نتيجة الضغط عليها، وهي متاحة في نطاق صغير من الأحجام يتراوح من (3,5 إلى 6,5) مليمتراً",
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
                            width: SizeConfig.defaultSize! * 27,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/krosheh5.png"),
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
                            width: SizeConfig.defaultSize! * 35,
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
                                "د/ أنواع أخري من إبر الكروشية",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),                           
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "يوجد العديد من الإبر التي يقوم بصناعتها الحرفيين المهرة، معظمها ذات مقبض مصنوع من الخشب المطوع، وفي بعض الأحيان مرصعة بالأحجار شبه الكريمة أو مزينة بالخرز، وهناك أنواع عديدة من إبر الكروشيه ذات الاستخدامات المختلفة منها إبر الكروشيه ثنائية الخطاف فلها صنارة أو خطاف في كلا طرفي عمودها، ويوجد أداة ثنائية الخطاف تسمى كروهوك (crow-hook) وأصبحت رائجة في الأسواق وشائعة الاستخدام",
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: SizeConfig.defaultSize! * 25,
                                width: SizeConfig.defaultSize! * 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/krosheh6.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),

                              Container(
                                height: SizeConfig.defaultSize! * 25,
                                width: SizeConfig.defaultSize! * 18,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/krosheh7.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ), 

                          Padding(
                            padding: const EdgeInsets.only(left: 130),
                            child: Container(                       
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 22,
                              decoration: BoxDecoration(
                                color: secondColor,
                                borderRadius: BorderRadius.circular(15),
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
                                  ":أحجام إبر الكروشية",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "تتوفر إبر الكروشيه بأحجام تبدأ من (0-14) ويبدأ سمك الإبرة من الأرقام الأصغر ويتدرج في المقاس إلى الأعلى أي كلما كبر رقم الإبرة كلما كان سمكها أقل فمثلاً الإبرة رقم واحد تعطي شغلاً أو نتيجة أسمك من الإبرة رقم عشرة التي تكون أرفع طردياً",
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
                            padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                            child: Text(
                              "يتم تحديد اختيار الإبرة المستخدمة بناء على سمك الخيط المستخدم، عندما يكون حجم الخيط رفيع نستخدم إبرة رفيعة وإذا كان حجم الخيط سميك نستخدم إبرة سميكة ويرفق عادة مع كل باترون أو خريطة حجم الخيط وحجم الإبرة المستعملة والجدول التالي يوضح حجم الإبرة والخيط المناسب",
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
                            height: SizeConfig.defaultSize! *1,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 35,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/krosheh8.png"),
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
                            padding: const EdgeInsets.only(top: 60, left: 110),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 25,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  "ثانيا: المقص",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "يستخدم لقطع الخيوط بدلاً من استخدام اليد في ذلك حيث يحافظ على الخيط نظيفاً، ويفضل استخدام المقص الصغير المستخدم في الأعمال اليدوية",
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
                            height: SizeConfig.defaultSize! * 2,
                          ),

                          Container(
                            height: SizeConfig.defaultSize! * 17,
                            width: SizeConfig.defaultSize! * 27,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/ma2as.png"),
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
                            padding: const EdgeInsets.only(top: 60, left: 110),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 25,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  "ثالثا: شريط القياس",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "شريط القياس من الأدوات المهمة التي تساعد في تحديد أبعاد الأعمال المنفذة ويرشد إلى المقاسات المطلوبة للحصول على نتيجة ناجحة للعمل المنفذ",
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
                            height: SizeConfig.defaultSize! * 25,
                            width: SizeConfig.defaultSize! * 27,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/shereet.png"),
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
                            padding: const EdgeInsets.only(top: 60, left: 110),
                            child: Container(
                              height: SizeConfig.defaultSize! * 5,
                              width: SizeConfig.defaultSize! * 25,
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(
                                  "رابعا: الكشتبان",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                            child: Text(
                              "ويسمى بقمع الخياطة وهو عبارة عن أداه من الأدوات المساعدة في تنفيذ اللاسيه ويأخذ الشكل الاسطواني المجوف ويشبه القمع ويصنع عادة من البلاستيك أو المعدن ويرتدى في الأصبع الأوسط من اليد اليمنى ويساعد على إدخال الإبرة ودفعها داخل الشرائط مما يساعد على انجاز العمل بسرعة بالإضافة لأنه يحمي الأصبعين السبابة والإبهام من دفع الإبرة إلى الامام ويأخذ ترقيم تبعا لمقاس الأصبع من 4:2",
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
                                image: AssetImage("assets/images/kashtaban.png"),
                                fit: BoxFit.fill
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),

                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          ///// videooo
                          
                          YoutubePlayerBuilder(
                            player: YoutubePlayer(
                              controller: _controller,
                              showVideoProgressIndicator: true,
                              bottomActions: [
                                CurrentPosition(),
                                ProgressBar(
                                  isExpanded: true,
                                  colors: const ProgressBarColors(
                                    playedColor: thirdColor,
                                    handleColor: firstColor,
                                  ),
                                ),
                                
                                const PlaybackSpeedButton(),                                
                                RemainingDuration(),
                                FullScreenButton(),
                              ],
                              
                            ),
                            builder: (context, player){
                              return Column(
                                children: [

                                    // some widgets
                                  SizedBox(
                                    height: SizeConfig.defaultSize! * 5,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 100, right: 0),
                                    child: Text(
                                      ":فيديو توضيحي للأدوات والخامات",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: kMainColor,
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.defaultSize! * 3,
                                  ),
                                  
                                  player,
                                    //some other widgets
                                ],
                              );
                            }
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
                          "الأدوات المستخدمة",
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