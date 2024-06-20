import 'dart:math';

import 'package:flutter/material.dart';

class ThreeDAnimationScreen extends StatefulWidget {
  const ThreeDAnimationScreen({super.key});

  @override
  State<ThreeDAnimationScreen> createState() => _ThreeDAnimationScreenState();
}

class _ThreeDAnimationScreenState extends State<ThreeDAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation =
        Tween<double>(begin: 0.00, end: 2 * pi).animate(_animationController);
    _animationController.repeat();
  }
@override
  void dispose() {
  _animationController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3D Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform(
              origin: const Offset(100, 100), // change the origin of the rotation
              transform: Matrix4.identity()..rotateZ(_animation.value),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blueAccent,
              ),
            );
          }
        ),
      ),
    );
  }

}
