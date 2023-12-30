// ignore_for_file: prefer_const_constructors

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson45 extends StatefulWidget {
  const Lesson45({super.key});

  @override
  State<Lesson45> createState() => _Lesson45State();
}

class _Lesson45State extends State<Lesson45> {

  final videoURL = "https://youtu.be/TqQ_za_MF-I";

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
            padding: const EdgeInsets.all(70),
            child: Text(
              "غرزة الفينيسية",
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
                                  "تستعمل هذه الغرزة في تدعيم الملابس بفن اللاسيه ونبدأ العمل من اليسار ويتكون الصف الأول من مجموعة غرز عروة على مسافات متباعدة على المساحة لكي تملأ، وعند إكمال الغرز على الجانب الأيمن نرجع بالخيط إلى الجانب الأيسر ونثبته على نقطة في مستوى مواز لقاع فتحات الصف الأعلى، ثم نكرر الصف الأول ويجب تثبيت الخيط جيدا داخل الغرز عند تشغيلها وجميع الصفوف تكون من اليسار إلى اليمين. كما في الشكل التالي",
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
                                    
                              // 
                                    
                              Center(
                                child: Container(
                                  height: SizeConfig.defaultSize! * 28,
                                  width: SizeConfig.defaultSize! * 28,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/venetian.png"),
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
                                        height: SizeConfig.defaultSize! * 5,
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
                      left: SizeConfig.defaultSize! * 8,
                      child: Container(                       
                        height: SizeConfig.defaultSize! * 5,
                        width: SizeConfig.defaultSize! * 33,
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
                            "Venetian cloth / غرزة الفينيسية",
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