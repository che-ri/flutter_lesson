import 'package:flutter/material.dart';
import 'package:painter/draw_controller.dart';

class DrawPainter extends CustomPainter {
  /// 상위 위젯에서 넘긴 points, drawColor, drawWidth를 그대로 받아와서 사용합니다.
  List<DrawingArea?> points = [];
  Color drawColor = Colors.red;
  double drawWidth = 5.0;
  late Paint drawingPaint;

  DrawPainter({required this.points, required this.drawColor, required this.drawWidth}) {
    drawingPaint = Paint()
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..color = drawColor
      ..strokeWidth = drawWidth;
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (int x = 0; x < points.length - 1; x++) {
      if (points[x] != null && points[x + 1] != null) {
        canvas.drawLine(
          points[x]!.point,
          points[x + 1]!.point,
          points[x]!.areaPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(DrawPainter oldDelegate) {
    return oldDelegate.points == points;
  }
}
