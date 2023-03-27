/// [indexOf]
/// 배열의 특정 요소의 위치가 필요할 때 사용합니다.
/// index는 배열 안에서 각 값의 위치를 나타내는 정수값이며, 0부터 시작합니다.
/// yellow는 배열의 두번째값으로 index 값은 1이 됩니다.

main() {
  var colors = ['red', 'yellow', 'green'];

  var pickUpYellowIndex = colors.indexOf('yellow');

  print(pickUpYellowIndex); // 1
}
