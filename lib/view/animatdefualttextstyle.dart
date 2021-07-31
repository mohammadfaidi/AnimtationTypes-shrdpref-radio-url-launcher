import 'package:flutter/material.dart';

class AnimateDefaultTEXXTsTYle extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<AnimateDefaultTEXXTsTYle> {
  @override
bool isSelected = false;
double fontsize = 60;
Color color = Colors.blue;
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationOpacity"),
        centerTitle: true,
      ),
  body: Center(
child: GestureDetector(
  onTap: (){
    setState(() {
          isSelected = !isSelected;
          fontsize = isSelected?100:30;
          color = isSelected?Colors.red:Colors.blue;
        });
  },
  child:   AnimatedDefaultTextStyle(
  
    duration: Duration(seconds: 2),
    style: TextStyle(
      fontSize: fontsize,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  child: Text("Tap Me"),
  ),
),
  ),
    );
      
    
  }
}