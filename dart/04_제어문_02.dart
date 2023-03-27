/// [break / continue]
/// 반복문에서 사용되는 구문입니다.
/// [break] : 반복문 탈출 구문
/// [continue] : 그다음 반복으로 이동하는 구문

main() {
  var max = 3;
  var index = 0;

  // while문은 ( ) 안의 조건이 참이면 계속 반복하는 문입니다.
  // 지금은 ( ) 안의 조건이 true 즉 참이므로
  // 따라서 break 문을 만나기 전까지는 계속 무한 반복을 합니다.

  while (true) {
    if (index == max) {
      // index가 max와 같아지면 반복문을 탈출합니다.
      print('end');
      break;
    } else {
      // index가 max와 같지않으면 index 값을 +1 합니다.
      print(index);
      index = index + 1;
      continue;
    }
  }

  // 0
  // 1
  // 2
  // end
}
