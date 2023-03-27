/// [List] : 중복을 허용하고, 순서가 있는 개체
/// [Set] : 중복을 허용하지 않고, 순서가 없는 개체
/// [Map] : 키-값 쌍으로 이루어져있고, 중복을 허용하지 않고, 순서가 없는 개체

main() {
  /// List : 중복을 허용하고, 순서가 있는 개체
  List fruit1 = ['apple', 'apple', 'banana', 'tomato', 'tomato'];

  /// Set : 중복을 허용하지 않고, 순서가 없는 개체
  Set fruit2 = {'apple', 'apple', 'banana', 'tomato', 'tomato'};

  /// Map : 키-값 쌍으로 이루어져있고, 키 중복을 허용하지 않고, 순서가 없는 개체
  Map fruit3 = {'first': 'apple', 'secondary': 'banana', 'third': 'tomato'};

  print(fruit1); //  ['apple', 'apple', 'banana', 'tomato', 'tomato']
  print(fruit2); //  {'apple', 'banana', 'tomato'}
  print(
      fruit3); //  {'first': 'apple', 'secondary': 'banana', 'third': 'tomato'}
}
