import 'package:flutter/material.dart';

class AnimatOpacity extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<AnimatOpacity> {
  @override
  bool isSelected = false;
  double opacityLevel = 1.0;

  changeOpacity(){
    setState(() {
              opacityLevel = opacityLevel ==0?1.0:0.0;

        });
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationOpacity"),
        centerTitle: true,
      ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
         opacity: opacityLevel,
          duration: Duration(seconds: 2),
          child: FlutterLogo(size: 100,),
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){
          changeOpacity();
          
        },
        child: Text("Tap Me"),
        ),
      ],
    ),


  ),

    );
      
    
  }
}