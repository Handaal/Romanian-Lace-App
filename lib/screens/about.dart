// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kMainColor,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(8),
            child: Container(
              height: 1.0.h,
              color: Colors.grey.withOpacity(0.5),
            )
          ),
          title: Center(
            child: Text(
              "عن التطبيق",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
              ),
            ),
          ),
        ),
        
        body: Column(
          children: [

            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),

            Center(
              child: Container(
                height: SizeConfig.defaultSize! * 27,
                width: SizeConfig.defaultSize! * 39,
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(
                    "تطبيق ذكي يهتم بمهارات تنفيذ مفروشات من اللاسيه الروماني لاكساب الخريجات مهارات التنفيذ يعرض التطبيق التعريف والخطوات والأدوات والخامات المستخدمة والغرز المستخدمة والتدريب علي انتاج المفروشات باستخدام فن اللاسيه الروماني",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.defaultSize! * 1,
            ),

          ],
        ),
      ),
    );
  }
}