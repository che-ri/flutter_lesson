/// [where]
/// 배열 안의 각 요소들 중 조건에 맞는 요소들을 찾는데 사용합니다.

main() {
  var numbers = [1, 2, 3];

  var moreThanTwo = numbers.where((number) => number >= 2);

  print(moreThanTwo); // (2,3)
}
