import 'package:flutter/material.dart';

class Rectangle extends CustomPainter {
  /// paint() 메서드에서는 어떤 것을 그릴 것인지 정의합니다.
  @override
  void paint(Canvas canvas, Size size) {
    /// 기준점을 중심으로 좌상우하의 지점을 지정합니다.이를 기준으로 네모를 만듭니다.
    final rect = Rect.fromLTRB(-50.0, -50.0, 50.0, 50.0);
    /// 어떻게 그릴 것인지 정의합니다.
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    /// 실제적으로 네모를 그리는 부분입니다.
    canvas.drawRect(rect, paint);
  }

  ///shouldRepaint() 메서드의 경우, 이전에 그려진 것을 다시 그리지 않아도 되는지 여부를 결정합니다.
  @override
  bool shouldRepaint(Rectangle oldDelegate) => false;
}