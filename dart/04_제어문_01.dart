/// [if / else if / else]
/// [if]는 ( )안의 조건이 참이면 { } 안의 코드를 실행하게 합니다.
/// [else if]는 if의 조건이 거짓이면서 ( )안의 조건이 참이면 { } 안의 코드를 실행합니다.
/// [else]는 if와 else if 조건 외의 상황이면 { } 안의 코드를 실행합니다.

main() {
  var fruit = 'apple';

  if (fruit == 'apple') {
    print('apple');
  } else if (fruit == 'orange') {
    print('orange');
  } else {
    print('nothing');
  }

  // apple
}
