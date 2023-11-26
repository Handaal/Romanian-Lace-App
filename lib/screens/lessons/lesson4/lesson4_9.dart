// ignore_for_file: prefer_const_constructors

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson49 extends StatefulWidget {
  const Lesson49({super.key});

  @override
  State<Lesson49> createState() => _Lesson49State();
}

class _Lesson49State extends State<Lesson49> {


  final videoURL = "https://youtu.be/5eEYKDSFSUA";

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
            padding: const EdgeInsets.all(50),
            child: Text(
              "غرزة روسية بسيطة",
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
                                  "هي غرزة بسيطة مناسبة لمسافات طويلة وضيقة داخل التصميم ويكون العمل فيها بشغل سلسلة من غرز العروة بحيث يتم تثبيت الخيط بإحكام في الجزء العلوي في الزاوية اليسرى ثم يتم تقديمها على الفضاء واحتجازها ضد النمط عن طريق الإبهام الايسر، ثم يتم دفع الإبر من خلال حبل اللاسيه إلى الجانب الأيمن من المساحة مع توجيه الإبر بشكل مباشر عبر حبل اللاسيه إلى الجانب الايسر، وعقد الخيط لأسفل مع الإبهام يجعل من المستحيل عمل الغرزة بشكل خاطئ لأن الإبرة لا تمر أبداً تحت الخيط المعلق في هذا الطريق",
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
                                    
                              Center(
                                child: Container(
                                  height: SizeConfig.defaultSize! * 33,
                                  width: SizeConfig.defaultSize! * 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/russian.png"),
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
                      left: SizeConfig.defaultSize! * 4,
                      child: Container(                       
                        height: SizeConfig.defaultSize! * 5,
                        width: SizeConfig.defaultSize! * 37,
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
                            "Plain Russian Stich / غرزة روسية بسيطة",
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