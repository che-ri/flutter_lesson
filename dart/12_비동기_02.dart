/// [async, await]
/// async와 await는 비동기를 동기처럼 만들어주는 개념입니다.
/// Future 값 앞에 await를 사용해주면, 값이 반환되는 시간(예제에선 1초)동안 기다려 로직을 처리한 후,
/// 그 다음 코드가 실행되게 됩니다.

main() async {
  print('1');

  /// 1초 뒤, two 변수에 2가 할당되게 됩니다.
  final two = await Future.delayed(Duration(seconds: 1), () => 2);
  print(two);
  print('3');
}
