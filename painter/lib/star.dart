import 'package:flutter/material.dart';

class Star extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 기준점입니다.
    double centerX = 0;
    double centerY = 0;

    /// 기준점에서부터 5개의 지점을 만듭니다.
    final _starOffsetList = <Offset>[
      Offset(centerX + 90, centerY + 120),
      Offset(centerX - 145, centerY - 45),
      Offset(centerX + 145, centerY - 45),
      Offset(centerX - 90, centerY + 120),
      Offset(centerX + 0, centerY - 145),
    ];

    /// 5개의 지점을 따라 polygon을 만듭니다.
    final path = Path()..addPolygon(_starOffsetList, false);

    /// 실제로 별을 만드는 부분입니다.
    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.yellow
        ..strokeWidth = 1.0,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
