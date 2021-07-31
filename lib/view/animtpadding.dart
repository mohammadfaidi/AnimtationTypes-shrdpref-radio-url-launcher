import 'package:flutter/material.dart';

class AnimatePaddding extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<AnimatePaddding> {
  @override
double paddingLevel  = 0.0;
changePadding(val){
  setState(() {
      paddingLevel =val;
    });
}

 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationOpacity"),
        centerTitle: true,
      ),
  body: Column(
    children: [
      AnimatedPadding(padding: EdgeInsets.all(paddingLevel), 
      duration: Duration(seconds: 2),
      child: Container(
        color: Colors.pink,
        width: 200,
        height: 350,
      ),
      ),
      Text("$paddingLevel"),
      SizedBox(height: 30,),
      ElevatedButton(onPressed: (){
        print(paddingLevel);
        changePadding(paddingLevel==0.0?100.0:0.0);
      }, child: Text("TAP ME"))
    ],
  ),

    );
      
    
  }
}