/// [map]
/// 배열 내의 모든 요소 각각에 대하여 주어진 함수를 호출한 결과를 모아 새로운 배열을 반환합니다.

main() {
  var numbers = [1, 2, 3];
  var plus_one_numbers = numbers.map((number) {
    return number + 1;
  });

  print(plus_one_numbers); //(2,3,4)
}
