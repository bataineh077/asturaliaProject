import 'package:flutter/material.dart';
import 'package:flutter_app/welcomScreen.dart';
import 'package:get/get.dart';


void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Raleway',
        accentColor: Color(0xFFB81254),
         primaryColor: Color(0xFFB81254),
        backgroundColor: Color(0xFFF6F7F9),
        appBarTheme: AppBarTheme(elevation: 0.0,
          color: Color(0xFFF6F7F9),
          textTheme:TextTheme(headline6: TextStyle(color: Colors.black,fontSize: 20,
              fontFamily:'Raleway' )),
          iconTheme: IconThemeData(color: Color(0xFFB81254)),

        ),
    ),
    textDirection: TextDirection.rtl,
    home: WelcomScreen(),

  ));
}
