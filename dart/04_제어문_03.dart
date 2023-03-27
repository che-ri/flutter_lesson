/// [switch문]
/// switch 구문에서는 if 문 대신 case를 사용합니다.
/// 들어온 조건이 모든 case에 맞지 않으면default 구문이 발휘됩니다.
/// case 마다 break가 없으면 모든 케이스가 실행될 수 있으므로 주의해야합니다.

main() {
  var fruit = 'apple';

  switch (fruit) {
    case 'apple':
      print(fruit);
      break;
    case 'orange':
      print(fruit);
      break;
    default:
      print(null);
  }
  // apple
}
