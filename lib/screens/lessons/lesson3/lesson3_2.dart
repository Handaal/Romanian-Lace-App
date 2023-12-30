// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson32 extends StatefulWidget {
  const Lesson32({Key? key}) : super(key: key);

  @override
  State<Lesson32> createState() => _Lesson32State();
}

class _Lesson32State extends State<Lesson32> {

  final videoURL = "https://youtu.be/01endlCSis8";

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
            padding: const EdgeInsets.all(10),
            child: Text(
              "خطوات تنفيذ اللاسيه الروماني",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21.sp,
              ),
            ),
          ),
        ),

        body: ListView(
          children: [
            Container(
              height: SizeConfig.defaultSize! * 140,
              width: SizeConfig.screenWidth,
              child: Column(
                children: [
        
                  SizedBox(
                    height: SizeConfig.defaultSize! * 3,
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Container(
                      height: SizeConfig.defaultSize! * 5,
                      width: SizeConfig.defaultSize! * 30,
                      decoration: BoxDecoration(
                        color: firstColor,
                        borderRadius: BorderRadius.circular(20.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade700,
                            offset: Offset(4.0.h, 4.0.w),
                            blurRadius: 10.0.w,
                            spreadRadius: 1.0.w,
                          )
                        ]
                      ),
                      child: Center(
                        child: Text(
                          ":خطوات تثبيت اللاسيه الروماني",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 130, right: 20),
                    child: Text(
                      "إعداد الشريط باستخدام إبرة الكروشيه",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 112, right: 20),
                    child: Text(
                      "نقل التصميم المراد تنفيذه على ورق مقوى",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Text(
                      "تثبيت الشريط السابق تنفيذه على حدود التصميم الخارجية بغرزة السراجة",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 185, right: 20),
                    child: Text(
                      "تنفيذ البريد الموجود بالتصميم",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 78, right: 20),
                    child: Text(
                      "تثبيت كل ضلعين متماسين بغرز اللفق المسحورة",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 135, right: 20),
                    child: Text(
                      "تنفذ بعد ذلك الغرز الموجودة بالتصميم",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Text(
                      "بعد الانتهاء يرفع التصميم من الورق المقوى وينظف من بقايا الخيوط. كما موضح بالصورة",
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
                    height: SizeConfig.defaultSize! * 2,
                  ),
        
                  Container(
                    height: SizeConfig.defaultSize! * 20,
                    width: SizeConfig.defaultSize! * 41,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/laaast.png"),
                        fit: BoxFit.fill
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                  ),

                  SizedBox(
                    height: SizeConfig.defaultSize! * 5,
                  ),

                  ////////////// videooo
                  
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

                          SizedBox(
                            height: SizeConfig.defaultSize! * 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 60, right: 0),
                            child: Text(
                              ":فيديو توضيحي لخطوات تثبيت شريط اللاسيه",
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
                          
                        ],
                      );
                    }
                  ),
                  
        
                ],
              ),
            ),
          ],
        ),

      )
    );
  }
}

