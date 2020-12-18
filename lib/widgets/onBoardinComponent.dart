import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingComponent extends StatelessWidget {

  String title , image;

  OnBoardingComponent({this.title,this.image});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      physics: NeverScrollableScrollPhysics(),
     // crossAxisAlignment: WrapCrossAlignment.center,
    //  alignment: WrapAlignment.spaceAround,
     // direction: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: AutoSizeText("${title}",
            style: TextStyle(
           fontWeight: FontWeight.w500
            ),
            textScaleFactor: Get.height/370,
          ),
        ),
        Image.asset('$image',
          height: Get.height/2.85,)

      ],);
  }
}
