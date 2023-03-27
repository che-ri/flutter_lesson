/// [assert]
/// 개발 환경에서만 사용할 수 있는 제어문입니다.
/// 조건이 거짓일 경우 해당 부분에서 실행이 중단됩니다.

main() {
  var number = 150;
  assert(number < 100, '100보다 작지 않습니다..');
  // Uncaught Error: Assertion failed: "100보다 작지 않습니다."

  print('이 부분은 실행되지 않아요!');
}
