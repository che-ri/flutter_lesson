import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:painter/draw_controller.dart';
import 'package:painter/draw_painter.dart';

class DrawPage extends StatefulWidget {
  DrawPage({Key? key}) : super(key: key);

  @override
  _DrawPageState createState() => _DrawPageState();
}

class _DrawPageState extends State<DrawPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DrawController(),
      builder: (DrawController controller) {
        return GestureDetector(

            /// 모든 이벤트처리를 drawController에게 넘겨줍니다.
            onPanDown: (details) => controller.onPanDown(details),
            onPanUpdate: (details) => controller.onPanUpdate(details),
            onPanEnd: (details) => controller.onPanEnd(),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Container(
                  child: CustomPaint(
                    painter: DrawPainter(
                        points: controller.points,
                        drawColor: controller.drawColor,
                        drawWidth: controller.drawWidth),
                  ),
                )));
      },
    );
  }
}
