// ignore_for_file: use_key_in_widget_constructors

import 'package:app_2/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value) ;
 final double? value;
  @override 
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value) ;
 final double? value;
  @override 
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}