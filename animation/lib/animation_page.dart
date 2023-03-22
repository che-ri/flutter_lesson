import 'package:animation/cat_image.dart';
import 'package:animation/rotate_animation.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: RotateAnimation(rotateItem: CatImage())));
  }
}
