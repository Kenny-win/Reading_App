import 'package:flutter/material.dart';

class Animations{
  static fromBottom(Animation<double> _animation, Animation<double> _secondaryAnimation, Widget _child){
    return SlideTransition(
      child: _child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(0.0, 1.0)).animate(_animation),
    );
  }
}