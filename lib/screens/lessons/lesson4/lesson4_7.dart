// ignore_for_file: prefer_const_constructors

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson47 extends StatefulWidget {
  const Lesson47({super.key});

  @override
  State<Lesson47> createState() => _Lesson47State();
}

class _Lesson47State extends State<Lesson47> {

  final videoURL = "https://youtu.be/_TDZIxs-UOI";

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
            padding: const EdgeInsets.all(70),
            child: Text(
              "غرزة إنجلترا",
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
                          height: SizeConfig.defaultSize! * 140,
                          width: SizeConfig.defaultSize! * 38,
                          decoration: BoxDecoration(
                            color: secondColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                                    
                              SizedBox(
                                height: SizeConfig.defaultSize! * 3,
                              ),
                                    
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "تتميز غرزة إنجلترا بعجلات صغيرة فوق شبكة مربعة أو مدورة كما بالصورة، وعند تشغيلها نضع خيوط مزدوجة في اتجاه واحد على المسافات التي ترغب فيها الشبكة وأثناء العمل نمسك هذه الخيوط في اتجاه رأسي أو أفقي أو منحرف حسب الملائمة، وعندما نضع الخيوط المتقاطعة بهذا الوضع على الشبكة يجب وضعها دائما من اليسار إلى اليمين فيمر الخيط حينئذ من اليمين إلى اليسار وكلما أقترب الخيط من التقاطع فإن الخيط ينسج لعمل عجلة حول خيوط التقاطع مرتين أو أكثر حسب الرغبة وينقل حينئذ إلى التقاطع التالي حيث تعمل عجلة أخرى، وبينما يتحرك الخيط من عجلة إلى أخرى فانه يعبر الخيط السابق وضعه في نفس الاتجاه، ويكرر العمل بعد كل صف لتشغيل الصف التالي",
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
                                    
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    
                                  Container(
                                    height: SizeConfig.defaultSize! * 20,
                                    width: SizeConfig.defaultSize! * 19,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/england2.png"),
                                        fit: BoxFit.fill
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                    
                                  Container(
                                    height: SizeConfig.defaultSize! * 20,
                                    width: SizeConfig.defaultSize! * 19,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/england1.png"),
                                        fit: BoxFit.fill
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                    
                                ],                        
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
                    ),

                    Positioned(
                      left: SizeConfig.defaultSize! * 5,
                      child: Container(                       
                        height: SizeConfig.defaultSize! * 5,
                        width: SizeConfig.defaultSize! * 36,
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
                            "Point de Angleterre / غرزة إنجلترا",
                            style: TextStyle(
                              fontSize: 20,
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