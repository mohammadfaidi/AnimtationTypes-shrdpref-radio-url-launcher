import 'package:flutter/material.dart';

class AnimateAlign extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<AnimateAlign> {
  @override
bool isSelected = false;

 
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
        });
  },
  child:   Container(
  
    width: 250,
  
    height: 300,
  
    color: Colors.pink,
  
    child: AnimatedAlign(
      alignment: isSelected?Alignment.bottomLeft:Alignment.topRight,
      child: FlutterLogo(size: 50,),
      duration: Duration(seconds: 5),
      curve: Curves.fastOutSlowIn,
      
      
  
    ),
  
  ),
),
  ),
    );
      
    
  }
}