import 'package:flutter/material.dart';
import 'dart:math' as math;
class AnimateBuilder  extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<AnimateBuilder>  with TickerProviderStateMixin{
  @override

 Widget build(BuildContext context) {
  final AnimationController _controller = AnimationController(
   duration: const Duration(seconds: 2),
   vsync: this,
 )..repeat();
 return Scaffold(
   body: Center(
     child: AnimatedBuilder(
       animation: _controller,
       child: Container(
         width: 200.0,                                                
                 height: 200.0,
         color: Colors.green,                                                                                                                             
         child: const Center(
           child: FlutterLogo(),
         ),
       ),
       builder: (BuildContext context, Widget child) {
         return Transform.rotate(
           angle:  _controller.value *2* math.pi,
           child: child,
         );
       },
     ),
   ),
 );
}
}