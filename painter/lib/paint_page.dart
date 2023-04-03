import 'package:flutter/material.dart';
import 'package:painter/circle.dart';
import 'package:painter/rectangle.dart';
import 'package:painter/star.dart';
import 'package:painter/draw.dart';

class PaintPage extends StatelessWidget {
  const PaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: DrawPage()));
  }
}
