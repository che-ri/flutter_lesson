import 'package:get/get.dart';
import 'package:flutter/material.dart';

/// points에 어떠한 값이 들어갈 지 서술합니다.
class DrawingArea {
  /// [point] : 점의 좌표
  /// [areaPaint] : draw style
  Offset point;
  Paint areaPaint;
  DrawingArea({required this.point, required this.areaPaint});
}

class DrawController extends GetxController {
  /// 색칠을 한 영역에 대한 path가 담겨질 곳입니다.
  List<DrawingArea?> points = [];

  /// 색칠할 색상입니다.
  Color drawColor = Colors.red;

  /// 선의 굵기입니다.
  double drawWidth = 5.0;

  onPanDown(DragDownDetails details) {
    /// drawing을 시작하고, points를 업데이트합니다.

    var _points = DrawingArea(
        point: details.localPosition,
        areaPaint: Paint()
          ..strokeCap = StrokeCap.round
          ..isAntiAlias = true
          ..color = drawColor
          ..strokeWidth = drawWidth);
    points.add(_points);
    update();
  }

  onPanUpdate(DragUpdateDetails details) {
    /// drawing을 계속 이어나가면서 points를 업데이트합니다.
    var _points = DrawingArea(
      point: details.localPosition,
      areaPaint: Paint()
        ..strokeCap = StrokeCap.round
        ..isAntiAlias = true
        ..color = drawColor
        ..strokeWidth = drawWidth,
    );
    points.add(_points);
    update();
  }

  onPanEnd() {
    /// drawing을 마치고, points의 끝점을 기록합니다.
    points.add(null);
    update();
  }
}
