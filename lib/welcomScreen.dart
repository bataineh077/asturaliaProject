import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'widgets/onBoardinComponent.dart';

class WelcomScreen extends StatefulWidget {
  @override
  _WelcomScreenState createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {





  PageController pageController = PageController();

  @override
  void initState() {

    super.initState();

  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Wrap(
            direction: Axis.horizontal,
            children: [
              Image.asset('assets/austLogo.png',
              fit: BoxFit.fitHeight,
              height: MediaQuery.of(context).size.height/30),
              Text('الطاقة المتجددة في استراليا'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              //  color: Colors.red,
                height: MediaQuery.of(context).size.height/1.6,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index){
                    setState(() {
                    currentIndex = index;
                  });
                },
                  children: [
                    OnBoardingComponent(
                      title: 'مشروع موجه للناطقين بالعربية \n'
                          'للتعريف بمستقبل الطاقة المتجددة في استراليا ',
                      image: 'assets/40402.png',
                    ),

                    OnBoardingComponent(
                      title: "دعمت وكالة الطاقة المتجددة الاسترالية (ARENA) 566 مشروع بمختلف مصادر الطاقة المتجددة بقيمة 1.63 مليار دولار",
                      image: 'assets/413.png',
                    ),

                    OnBoardingComponent(
                      title: """تلبي طاقة الرياح في استراليا 7.1% من اجمالي الطلب على الكهرباء في البلاد
في نهاية عام 2018 """,
                      image: 'assets/412.png',
                    ),

                    OnBoardingComponent(
                      title: """الطاقة الحيوية لديها مجال للتوسع كمصدر للطاقة في أستراليا ، حيث تساهم بنسبة تصل إلى أربعة في المائة من إجمالي استهلاك الطاقة في أستراليا """,
                      image: 'assets/814.png',
                    ),
                  ],
                ),
              ),



              DotsIndicator(
                dotsCount: 4,
                position: currentIndex.ceilToDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/14,),
                child: FlatButton(
                  height: MediaQuery.of(context).size.height/16,
                  minWidth: MediaQuery.of(context).size.width/1.75,
                  onPressed: (){
                    Get.to(Home());
                  },
                  color: Colors.red.shade400,
                  child: Text('دخول',style: TextStyle(color: Colors.white),),
                ),
              )

            ],
          ),
        ),

    );
  }
}
