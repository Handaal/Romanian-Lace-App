// ignore_for_file: prefer_const_constructors

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:app_2/features/onBoarding/widgets/content_model.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            
            Container(
              height: SizeConfig.defaultSize! * 3,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
              ),
            ),
            
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_,i){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 120),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundImage:AssetImage(contents[i].image),
                          radius: 120,
                        ),

                        SizedBox(
                          height: SizeConfig.defaultSize! * 4,
                        ),

                        Text(
                          contents[i].title,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: kMainColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              color: Colors.transparent,
              height: SizeConfig.defaultSize! * 13,
              width: SizeConfig.screenWidth,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _controller?.jumpToPage(3);
                      },
                      child: Text(
                        "تخطي",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: thirdColor,
                        ),
                      ),
                    ),
                
                    Container(
                      color: Colors.transparent,
                      width: SizeConfig.defaultSize! * 11,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: List.generate(
                          contents.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    ),
                
                    GestureDetector(
                      onTap: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushNamed(context, '/welcome');
                        }
                        _controller?.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                      },
                      child: Container(
                        width: SizeConfig.defaultSize! * 7,
                        height: SizeConfig.defaultSize! * 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            size: SizeConfig.defaultSize! * 5,
                            color: thirdColor,                            
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Container(
              height: SizeConfig.defaultSize! * 3,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: firstColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
              ),
            ),        
          ],
        ),
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 1,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: thirdColor,
      ),
    );
  }
}