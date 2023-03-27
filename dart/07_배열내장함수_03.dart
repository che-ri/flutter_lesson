/// [fold]
/// 배열 안의 각 요소들을 모두 순회하면서 최종적으로 하나의 값을 만들고 싶을 때 사용합니다.
/// fold (초기값, ( 누적값, 현재 요소값 ){ return 반환값 } );

main() {
  var numbers = [1, 2, 3];

  var sumOfNumbers = numbers.fold(0, (accmulation, currentValue) {
    return accmulation + currentValue;
  });

  print(sumOfNumbers); //6
}
