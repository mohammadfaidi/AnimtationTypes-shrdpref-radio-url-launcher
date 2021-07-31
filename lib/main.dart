import 'package:animate/view/animatalign.dart';
import 'package:animate/view/animatbuilder.dart';
import 'package:animate/view/animatdefualttextstyle.dart';
import 'package:animate/view/animtcontainer.dart';
import 'package:animate/view/animtopacity.dart';
import 'package:animate/view/animtpadding.dart';
import 'package:animate/view/animtpositioned.dart';
import 'package:animate/view/prefswithradio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    //  home: AnimateContainer(),
    //home: AnimatOpacity(),
   // home: AnimatePositioed(),
  // home: AnimatePaddding(),
  //home: AnimateAlign(),
  //home: AnimateDefaultTEXXTsTYle(),
  //home: AnimateBuilder(),
  home: RadioWithShared(),
    );
  }
}

