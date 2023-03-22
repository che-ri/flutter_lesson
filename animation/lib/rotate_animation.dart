import 'package:flutter/material.dart';

class RotateAnimation extends StatefulWidget {
  RotateAnimation({required this.rotateItem, super.key});

  Widget rotateItem = SizedBox.shrink();

  @override
  _RotateAnimationState createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    /// 애니메이션을 정의하는 역할을 합니다.
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    /// Tween은 값의 범위를 나타내는 시작 값과 종료 값 사이의 보간(interpolation)을 계산하는 데 사용됩니다.
    /// 예를 들어 시작 값(0)과 종료 값(1)의 중간 값을 계산합니다.
    /// Tween은 현재 위치에 대한 중간 값을 계산하고 이 값을 반환합니다.
    Tween<double> _rotationTween = Tween(begin: 0, end: 1);

    /// 실제 애니메이션 동작에 대해 서술합니다.
    animation = _rotationTween.animate(controller)
      ..addListener(() {
        /// 이벤트가 발생할때마다 화면을 업데이트 시키기 위해 setState를 활용합니다.
        setState(() {});
      })
      /// addStatusListener은 애니메이션의 상태가 변경될 때마다 실행됩니다.
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('complete');

          /// 애니메이션이 정방향으로 완료될 때 수행될 로직을 작성합니다.
          /// 아래에서는 애니메이션이 다시 반복하는 것으로 작성했습니다.
          controller.repeat();
        }
      });

    /// 애니메이션을 정방향으로 실행시킵니다.
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      /// turns에서는 회전애니메이션을 정의합니다.
      turns: animation,
      /// 회전시킬 아이템을 정의합니다. 이는 상위 위젯에서부터 받아오도록 합시다.
      child: widget.rotateItem,
    );
  }
}
