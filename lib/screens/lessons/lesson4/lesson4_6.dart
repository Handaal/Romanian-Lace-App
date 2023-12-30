// ignore_for_file: prefer_const_constructors

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson46 extends StatefulWidget {
  const Lesson46({super.key});

  @override
  State<Lesson46> createState() => _Lesson46State();
}

class _Lesson46State extends State<Lesson46> {

  final videoURL = "https://youtu.be/x3nxW2BA65Q";

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
              height: 1.0.h,
              color: Colors.grey.withOpacity(0.5),
            )
          ),
          title: Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              "الغرزة الاسبانية(هولي)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21.sp,
              ),
            ),
          ),
        ),

        body: ListView(
          children: [

           

            Column(
              children: [
        
                SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
        
                Stack(
                  children: [

                    Container(
                      width: SizeConfig.screenWidth,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                        child: Container(
                          height: SizeConfig.defaultSize! * 130,
                          width: SizeConfig.defaultSize! * 38,
                          decoration: BoxDecoration(
                            color: secondColor,
                            borderRadius: BorderRadius.circular(15.w),
                          ),
                          child: Column(
                            children: [
                                    
                              SizedBox(
                                height: SizeConfig.defaultSize! * 2,
                              ),
                                    
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "تعتبر من الغرز المتميزة من غرز اللاسيه، تعطي تأثير الخطوط المتوازية الافقية المتصلة، وتعطي نتائج ممتازة عندما تستخدم لملئ الخلفيات كما هو الحال في جميع غرز الحشوات يتم تنفيذ الغرزة عن طريق تثبيت الخيط في الزاوية العلوية اليسرى من الفراغ المراد ملؤه ثم يتم تمرير الابر من حافة حبل اللاسيه الايسر للجهة المطلوبة ثم يتم لف الابر تحت الخيط ويتم تكرار هذه العملية حتى يتم إنهاء الصف، ويختلف طول الغرزة على حسب ما يتناسب التصميم كما بالصورة",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 15.sp,
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
                                  height: SizeConfig.defaultSize! * 28,
                                  width: SizeConfig.defaultSize! * 28,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/spanish.png"),
                                      fit: BoxFit.fill
                                    ),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.w),
                                  ),
                                ),
                              ),
                                    
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
                                        height: SizeConfig.defaultSize! * 3,
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 200, right: 0),
                                        child: Text(
                                          ":فيديو توضيحي للغرزة",
                                          style: TextStyle(
                                            fontSize: 16.sp,
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
                    ),

                    Positioned(
                      left: SizeConfig.defaultSize! * 7,
                      child: Container(                       
                        height: SizeConfig.defaultSize! * 5,
                        width: SizeConfig.defaultSize! * 34,
                        decoration: BoxDecoration(
                          color: firstColor,
                          borderRadius: BorderRadius.circular(30.w),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade700,
                              offset: Offset(4.0.h, 4.0.w),
                              blurRadius: 5.w,
                              spreadRadius: 1.0.w,
                            )
                          ]
                        ),
                        child: Center(
                          child: Text(
                            "Spanish Point Stich / الغرزة الاسبانية",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),                           
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}