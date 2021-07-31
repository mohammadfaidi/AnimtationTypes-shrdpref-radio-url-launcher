import 'package:flutter/material.dart';

class AnimatePositioed extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<AnimatePositioed> {
  @override
  bool isSelected = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimateContainer"),
        centerTitle: true,
      ),
  body: Stack(
    children: [
AnimatedPositioned(child: GestureDetector(
  onTap: (){
    setState(() {
          isSelected = !isSelected;
        });
  },
  child:   Container(
  
  color: Colors.blue,
  
  width: 50,
  
  height: 100,
  
  
  
  ),
),

 duration: Duration(seconds: 2),
 width: isSelected?300:100,
 height: isSelected?300:50,
 top: isSelected?100:50,
 left: isSelected?100:50,
 )
    ],
     

  ),

    );
      
    
  }
}