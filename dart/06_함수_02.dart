/// [익명 함수]
/// 함수지만 정해진 이름이 없는 함수입니다.
/// (매개변수명){표현식}
///
/// [람다식]
/// 익명함수의 변형형태입니다.
/// (매개변수명)=>표현식

main() {
  var list = ['cat', 'dog', 'lion'];

  // forEach 내장함수를 통해 list의 각 요소값에 순서대로 접근할 수 있습니다.
  // 아래는 접근한 각 요소들을 출력하는 예제입니다.

  /// 익명함수
  list.forEach((animal) {
    print(animal);
  });
  // cat
  // dog
  // lion

  /// 람다식
  list.forEach((animal) => print(animal));
  // cat
  // dog
  // lion
}
