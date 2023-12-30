// ignore_for_file: prefer_const_constructors

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson42 extends StatefulWidget {
  const Lesson42({super.key});

  @override
  State<Lesson42> createState() => _Lesson42State();
}

class _Lesson42State extends State<Lesson42> {

  final videoID1 = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=dg8RUMFKN-E");

  final videoID2 = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=yr_gC6fuXUQ");

  final videoID3 = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=l2gbsM9dwSs");

  final videoID4 = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=3uT22Yg0whY");

  final videoID5 = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=B6rJPAqP3EY");

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
              "غرزة الحشو",
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
                          height: SizeConfig.defaultSize! * 700,
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
                                  "ويكون العمل فيها بشغل صف من غرزة العروة المتلاصقة من اليسار إلى اليمين وعند وصول الخيط عند الجانب الأيمن نعمل غرزتين عروة في وضع عمودي لأسفل ولعمل الصف الثاني نشغل غرزة عروة كبيرة بين كل ثلاث عروات من الصف العلوي متجهين من اليمين إلى اليسار ونبدأ الصف الثالث بربط الخيط في الجانب الايسر بغرزة عروة ثم العمل في الاتجاه من اليسار إلى اليمين بعمل غرزة عروة في كل عروة طويلة بالصف الثاني، ثم العمل بالصف الرابع بشغل ثلاث غرز عروة لأسفل على الجانب الأيمن، والصف الخامس تكرار الصف الأول كما أن الصف السادس تكرار الصف الثاني والصف السابع تكرار للصف الثالث وهكذا كما بالصورة",
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
                                height: SizeConfig.defaultSize! * 1,
                              ),
                                    
                              Center(
                                child: Container(
                                  height: SizeConfig.defaultSize! * 28,
                                  width: SizeConfig.defaultSize! * 27,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/7ashw.png"),
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
                                  controller: YoutubePlayerController(
                                    initialVideoId: videoID1!,
                                    flags: YoutubePlayerFlags(
                                      autoPlay: false,
                                      mute: false,
                                    ),
                                  ),
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
                                      
                                    ],
                                  );
                                }
                              ),

                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "وهناك العديد من أشكال غرز الحشو سنقوم بعرض عدد منهم",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                                                
                                  ),
                                  textAlign: TextAlign.end,
                                  
                                ),
                              ),

                              SizedBox(
                                height: SizeConfig.defaultSize! * 2,
                              ),

                              Container(                       
                                height: SizeConfig.defaultSize! * 5,
                                width: SizeConfig.defaultSize! * 20,
                                decoration: BoxDecoration(
                                  color: thirdColor,
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
                                    "أ/ غرزة الحشو",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),                           
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "ويكون العمل فيها بشغل غرزة روسية بسيطة السابق ذكرها بطول المساحة المراد شغلها، ثم نقوم بعمل ثلاث غرز عروة حول الحبلين بداية من الجانب الايسر من منتصف الفتحات المحشوة بالغرز الروسية صورة (أ )، ثم نقوم بعمل ثلاث غرز عروة حول الحبلين التالين من الجانب الأيمن صورة( ب)، ثم نقوم بتكرار الغرز وهكذا صورة(ج)",
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
                                height: SizeConfig.defaultSize! * 1,
                              ),

                              Container(
                                height: SizeConfig.defaultSize! * 30,
                                width: SizeConfig.defaultSize! * 38,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/alef.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15.w),
                                ),
                              ),
                              
                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              YoutubePlayerBuilder(
                                player: YoutubePlayer(
                                  controller: YoutubePlayerController(
                                    initialVideoId: videoID2!,
                                    flags: YoutubePlayerFlags(
                                      autoPlay: false,
                                      mute: false,
                                    ),
                                  ),
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
                                      
                                    ],
                                  );
                                }
                              ),

                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              Container(                       
                                height: SizeConfig.defaultSize! * 5,
                                width: SizeConfig.defaultSize! * 20,
                                decoration: BoxDecoration(
                                  color: thirdColor,
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
                                    "ب/ غرزة الحشو",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),                           
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "ويكون العمل فيها بشغل خيوط أفقية بطول المساحة المراد شغلها، ثم نقوم بشد زوج من الخيوط من أسفل إلى اعلى مروراً بالخيوط الأفقية، ثم نبدأ من النقطة d للأسفل ونقوم بغرز خيوط الشد الثلاثة الأولى المنسوجة بشكل أفقي وكذلك نقوم بجذب كلا خطين الشد معاً المنسوجين بشكل عمودي باتجاه عقارب الساعة ونقوم بربط كل خيوط الجذب الأفقية والعمودية معاً وغرزهم أسف خيط العمل صورة (أ)، وبهذه الكيفية سنحصل على شكل دائرتين ونصف دائرة، ثم نقوم بلف الخيط عكس عقارب الساعة مرتين حول الخيوط الرأسية صورة(ب)، وبعد ذلك نقوم بعمل الغرز التالية على الخيوط الأفقية الثلاثة القادمة مره أخرى ونلف في اتجاه عقارب الساعة، ونكرر الخطوات كما توضح الصورة (ج)",
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
                                height: SizeConfig.defaultSize! * 1,
                              ),

                              Container(
                                height: SizeConfig.defaultSize! * 30,
                                width: SizeConfig.defaultSize! * 38,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/baaa2.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15.w),
                                ),
                              ),
                              
                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              YoutubePlayerBuilder(
                                player: YoutubePlayer(
                                  controller: YoutubePlayerController(
                                    initialVideoId: videoID3!,
                                    flags: YoutubePlayerFlags(
                                      autoPlay: false,
                                      mute: false,
                                    ),
                                  ),
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
                                      
                                    ],
                                  );
                                }
                              ),

                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              Container(                       
                                height: SizeConfig.defaultSize! * 5,
                                width: SizeConfig.defaultSize! * 20,
                                decoration: BoxDecoration(
                                  color: thirdColor,
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
                                    "ج/ غرزة الحشو",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),                           
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "ويكون العمل فيها بشغل نفس خطوات غرز الحشو(ب) السابق ذكرها، يجب أن يكون عدد خيوط العمل مقسمة لأربع أجزاء و نغرز كل أربع خيوط معا بدلا من ثلاثة، وبذلك نربط خيوط الشد لكلا الغرزتين مع الغرزة الطويلة، ونقوم بسحب خيط العمل بإحكام أسفل الخيط الأول كما توضح صورة (أ)والمرموز له بـ a، ثم نتجه للأسفل بشكل عمودي مرورا بالغرز الطويلة ونقوم بلفهم حول الخيوط الأربعة ( الخيوط الأربعة هي الخيطين السفلين من الغرزة الأولى والخيطين العلويين من الغرزة الثانية)، وبعد ذلك نربط كل أربع خيوط من الشد التاليين المتواجدين في الغرزة حتى نصل للنقطة b كما توضح صورة (ب)، ولكن لن نربط كلا غرزتي الشد الأخيرتين ونكمل الغرز بعد ذلك من اسفل حبل اللاسيه وصولا للنقطة c وبزاوية باستدارة 180 درجة، ونكرر الخطوات السابق في الاتجاه الاخر من الغرز كما توضح صورة (ج)",
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
                                height: SizeConfig.defaultSize! * 1,
                              ),

                              Container(
                                height: SizeConfig.defaultSize! * 30,
                                width: SizeConfig.defaultSize! * 38,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/geem.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15.w),
                                ),
                              ),
                              
                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              YoutubePlayerBuilder(
                                player: YoutubePlayer(
                                  controller: YoutubePlayerController(
                                    initialVideoId: videoID4!,
                                    flags: YoutubePlayerFlags(
                                      autoPlay: false,
                                      mute: false,
                                    ),
                                  ),
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
                                      
                                    ],
                                  );
                                }
                              ),

                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              Container(                       
                                height: SizeConfig.defaultSize! * 5,
                                width: SizeConfig.defaultSize! * 20,
                                decoration: BoxDecoration(
                                  color: thirdColor,
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
                                    "د/ غرزة الحشو",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),                           
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "ويكون العمل فيها بشد زوج من الخيوط المرتخين بداخل حلقات المحشوة بداية من النقطة  a وصولاً للنقطة b وبالرجوع مرة أخرى للنقطة a ، ثم نلف بعضاً من الغرز ناحية اليمين عن النقطة a حول القوس المشدود، ونقوم بلف الخيط المستخدم خلف الخيط المتخذ شكل القوس العلوي بعد غرز الخيط المنحني لأسفل، ثم نقوم بعد ذلك بسحب خيوط العمل تجاه الأسفل مره أخرى ونغرز خيوط القوس العلوي والسفلي، ثم نغرز كل زوج من الخيوط المستخدمة في كلتا الغرزتين الجانبية عن النقطة d ، ونقوم بربط الخيط الأول مرة أخرى في العقدة الجانبية عند النقطة e  بالشكل المماثل لشكل الحبل ونكرر الكرة مرة أخرى ونصنع القوس المشدود، ثم نقوم بعمل غرز النسيج بين خيوط الشد كما توضح الصورة (أ)، وبهذه الطريقة نغرز حوالي ثلاثة ارباع الطول الخاص بالخيوط المشدودة المتواجدة في الأطراف، اما بالنسبة للربع المتبقي فهو لغرز أربع خيوط شد المتواجدين في قلب الغرزة حتى تصبح جاهزة عند النقطةd  كما توضح الصورة (ب)",
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
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "ولابد وأن يتناسب عدد الغرز المنسوجة حول الأقواس المسحوبة دائما وأبد مع حجم وطول الحلقات المحشوة، عندما تكون الحلقات أصغر والأقواس المسحوبة طولها أقصر من المناسب فإن شكل الغرز سوف يكون غير مناسب",
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
                                height: SizeConfig.defaultSize! * 1,
                              ),

                              Container(
                                height: SizeConfig.defaultSize! * 30,
                                width: SizeConfig.defaultSize! * 38,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/daaal.png"),
                                    fit: BoxFit.fill
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15.w),
                                ),
                              ),

                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              YoutubePlayerBuilder(
                                player: YoutubePlayer(
                                  controller: YoutubePlayerController(
                                    initialVideoId: videoID5!,
                                    flags: YoutubePlayerFlags(
                                      autoPlay: false,
                                      mute: false,
                                    ),
                                  ),
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
                                      
                                    ],
                                  );
                                }
                              ),

                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "أشكال مختلفة من غرزة الحشو",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                                                
                                  ),
                                  textAlign: TextAlign.end,
                                  
                                ),
                              ),

                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      height: SizeConfig.defaultSize! * 33,
                                      width: SizeConfig.defaultSize! * 38,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/akheraa.png"),
                                          fit: BoxFit.fill
                                        ),
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(15.w),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              
                              SizedBox(
                                height: SizeConfig.defaultSize! * 8,
                              ),
                                                                        
                            ],
                            
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: SizeConfig.defaultSize! * 13,
                      child: Container(                       
                        height: SizeConfig.defaultSize! * 5,
                        width: SizeConfig.defaultSize! * 28,
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
                            "Filling Stich / غرزة الحشو",
                            style: TextStyle(
                              fontSize: 17.sp,
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