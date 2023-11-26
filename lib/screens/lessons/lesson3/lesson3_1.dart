// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson31 extends StatefulWidget {
  const Lesson31({super.key});

  @override
  State<Lesson31> createState() => _Lesson31State();
}

class _Lesson31State extends State<Lesson31> {

  final videoURL = "https://youtu.be/8hkcyLkHlpM";

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
              height: SizeConfig.defaultSize! * 3,
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: SizeConfig.defaultSize! * 15,
                width: SizeConfig.defaultSize! * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "شريط اللاسيه ينفذ الشريط باستخدام ابرة الكروشيه المناسبة للخيط المستخدم سواء كان مصنوع من القطن أو الصوف أو الحرير ثم تنفيذ بعض غرز الكروشيه",
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 7, right: 30, left: 20),
              child: Text(
                "مراحل إعداد شريط اللاسيه:",
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
                textDirection: TextDirection.rtl,
              ),
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),

            Center(
              child: Container(
                height: SizeConfig.defaultSize! * 6,
                width: SizeConfig.defaultSize! * 30,
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    )
                  ]
                ),
                child: Center(
                  child: Text(
                    "المرحلة الأولي",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),

            Center(
              child: Container(
                height: SizeConfig.defaultSize! * 58,
                width: SizeConfig.defaultSize! * 37,
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 25),
                      child: Text(
                        "عمل العقدة الأولى (المنزلقة) على إبرة الكروشيه",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 95),
                      child: Text(
                        "أولاً: وضع إبرة الكروشيه أمام الخيط",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "ثانياً: عمل لفة كاملة من الخيط حول الإبرة وبالتالي يصبح موجود عروة على الإبرة",
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
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 15),
                      child: Text(
                        "ثالثاً: سحب الخيط الملفوف من العروة على الإبرة",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 75),
                      child: Text(
                        "رابعاً: سحب نهاية الخيط لإحكام العقدة",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 3, right: 10, left: 255),
                      child: Text(
                        ":كما بالشكل",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),

                    Container(
                      height: SizeConfig.defaultSize! * 26,
                      width: SizeConfig.defaultSize! * 26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/ola.png"),
                          fit: BoxFit.fill
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),

            Center(
              child: Container(
                height: SizeConfig.defaultSize! * 6,
                width: SizeConfig.defaultSize! * 30,
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    )
                  ]
                ),
                child: Center(
                  child: Text(
                    "المرحلة الثانية",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),

            Center(
              child: Container(
                height: SizeConfig.defaultSize! * 71,
                width: SizeConfig.defaultSize! * 37,
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 165),
                      child: Text(
                        "عمل ثلاث غرز من السلسلة",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 130),
                      child: Text(
                        "أولاً: مسك الإبرة في اليد اليمنى",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "ثانياً: مسك نهاية العقدة المنزلقة بين إصبعي الابهام والوسطى لليد اليسرى إلى الأمام حول سن الإبرة",
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
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 15),
                      child: Text(
                        "ثالثاً: سحب الخيط بواسطة سن الإبرة ليمر من خلال العقدة الموجودة على الإبرة للحصول على السلسلة الأولى",
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
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "رابعاً: تكرار الخطوات السابقة للحصول على ثلاث غرز من غرز السلسلة",
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
                      padding: const EdgeInsets.only(top: 3, right: 10, left: 255),
                      child: Text(
                        ":كما بالشكل",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),

                    Container(
                      height: SizeConfig.defaultSize! * 26,
                      width: SizeConfig.defaultSize! * 26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/tanya.png"),
                          fit: BoxFit.fill
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    

                  ],
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),

            Center(
              child: Container(
                height: SizeConfig.defaultSize! * 6,
                width: SizeConfig.defaultSize! * 30,
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    )
                  ]
                ),
                child: Center(
                  child: Text(
                    "المرحلة الثالثة",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),

            Center(
              child: Container(
                height: SizeConfig.defaultSize! * 250,
                width: SizeConfig.defaultSize! * 37,
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 150),
                      child: Text(
                        "الحصول على شريط اللاسيه",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Text(
                        "أولاً: إدخال سن الإبرة في الغرزتين اللتين تم تنفيذهما وبالتالي يصبح موجود على الإبرة ثلاث عراوي كما بالشكل",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
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
                      height: SizeConfig.defaultSize! * 26,
                      width: SizeConfig.defaultSize! * 26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/talta.png"),
                          fit: BoxFit.fill
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 162),
                      child: Text(
                        "ثانياً: لف الخيط على الإبرة",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "ثالثاً: سحب الخيط الملفوف على الإبرة ليمر من خلال الغرزتين التين تم إدخال سن الإبرة فيهما فيصبح موجود على الإبرة غرزة واحدة كما هو موضح بالشكل",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
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
                      height: SizeConfig.defaultSize! * 26,
                      width: SizeConfig.defaultSize! * 26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/rab3a.png"),
                          fit: BoxFit.fill
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, left: 170),
                      child: Text(
                        "رابعاً: تدوير الشغل للخلف",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "خامسا: بعد تدوير الشغل للخلف يتم إدخال سن الإبرة في الغرزتين ولكن من أسفل بحيث يصبح على الإبرة ثلاث غرز",
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
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 145),
                      child: Text(
                        "سادسا: لف الخيط على الإبرة",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "سابعا: سحب الخيط الملفوف على الإبرة ليمر من خلال الغرزتين السابقتين فيصبح على الإبرة غرزتين",
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
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 160),
                      child: Text(
                        "ثامنا: لف الخيط على الإبرة",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "تاسعا: سحب الخيط الملفوف على الإبرة ليمر من خلال الغرزتين المتبقيتين على الإبرة فيصبح على الإبرة غرزة واحدة",
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
                      padding: const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Text(
                        "عاشرا: يتم تكرار الخطوات من الخامسة حتي العاشرة للحصول على الطول المطلوب من شريط اللاسيه",
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
                      padding: const EdgeInsets.only(top: 3, right: 10, left: 255),
                      child: Text(
                        ":كما بالشكل",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.defaultSize! * 2,
                    ),

                    Container(
                      height: SizeConfig.defaultSize! * 35,
                      width: SizeConfig.defaultSize! * 26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/khamsa.png"),
                          fit: BoxFit.fill
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),


                    ////////// videoo
                    SizedBox(
                      height: SizeConfig.defaultSize! * 8,
                    ),

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
                              padding: const EdgeInsets.only(left: 35, right: 10),
                              child: Text(
                                ":فيديو توضيحي لكيفية إعداد شريط اللاسيه",
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

            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),

          ],
        ),
      )
    );
  }
}