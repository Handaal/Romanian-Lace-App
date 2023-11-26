// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson41 extends StatefulWidget {
  const Lesson41({super.key});

  @override
  State<Lesson41> createState() => _Lesson41State();
}

class _Lesson41State extends State<Lesson41> {

  final videoURL = "https://youtu.be/TmwsN43h__g";

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
              "غرزة الأعمدة",
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
                          height: SizeConfig.defaultSize! * 130,
                          width: SizeConfig.defaultSize! * 38,
                          decoration: BoxDecoration(
                            color: secondColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                                    
                              SizedBox(
                                height: SizeConfig.defaultSize! * 2,
                              ),
                                    
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "لعمل عمود أو حواجز نطمس أحد أطراف الخيط عند نقطة بداية العمود، ثم نبتعد بالخيط المسافة اللازمة لطول العمود وفي زاوية مناسبة ولتكن قائمة عادة ندخل الإبرة وعند الرجوع بالخيط إلى الطرف المطموس نلفه حول الغرزة مرة أو مرتين، ومن الممكن عمل الأعمدة الأساسية عن طريق عمل عروات بالخيط الراجع ليظهر لنا صفا واحد من الشبك المحكم كما بالشكل وقد تزود الأعمدة بغرز نهايات مثل غرزة العروة أو الركوكو لتجميل الأعمدة وإعطائها شكل زخرفياً",
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
                                        image: AssetImage("assets/images/ghorzaaa3.png"),
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
                                        image: AssetImage("assets/images/ghorzaa2.png"),
                                        fit: BoxFit.fill
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                    
                                ],                        
                              ),
                                    
                              SizedBox(
                                height: SizeConfig.defaultSize! * 2,
                              ),
                                    
                              Center(
                                child: Container(
                                  height: SizeConfig.defaultSize! * 20,
                                  width: SizeConfig.defaultSize! * 19,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/ghorza1.png"),
                                      fit: BoxFit.fill
                                    ),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
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
                      left: SizeConfig.defaultSize! * 18,
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
                            "Bars / غرزة الأعمدة",
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

