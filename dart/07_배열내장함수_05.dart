/// [asMap]
/// 배열 안 각 요소마다 인덱스 키 값을 삽입한 값을 반환해줍니다.

main() {
  var colors = ['red', 'yellow', 'green'];

  var colorsToMap = colors.asMap();

  print(colorsToMap); // {0: red, 1: yellow, 2: green}
}
