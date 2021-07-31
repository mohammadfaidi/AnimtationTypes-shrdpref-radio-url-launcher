import 'package:flutter/material.dart';

class AnimateContainer extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<AnimateContainer> {
  @override
  bool isSelected = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimateContainer"),
        centerTitle: true,
      ),
  body: Center(
    child: GestureDetector(
      onTap: (){
        setState(() {
                  isSelected = !isSelected;
                });
      },
      child: AnimatedContainer(
        width: isSelected?100:150,
        height: isSelected?300:150,
        color: isSelected?Colors.green:Colors.blue,
        alignment: isSelected?Alignment.center:Alignment.topRight,
        duration: Duration(seconds: 2),
        child: FlutterLogo(size: 40,),
      ),
    ),

  ),

    );
      
    
  }
}