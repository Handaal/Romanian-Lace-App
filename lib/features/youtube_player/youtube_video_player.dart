import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({super.key});

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {

  final videoURL = "https://www.youtube.com/watch?v=YMx8Bbev6T4&t=1s";

  late YoutubePlayerController _controller;

  @override
  void initState() {

    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:  const Center(child: Text("Youtube video")),
      ),

      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.defaultSize! * 5,
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
                FullScreenButton(),
                RemainingDuration(),
                PlayPauseButton(),
              ],
              
            ),
            builder: (context, player){
              return Column(
                children: [
                    // some widgets
                    player,
                    //some other widgets
                ],
              );
            }
          ),
        ],
      ),
    );
  }
}