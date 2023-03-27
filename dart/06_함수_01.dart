/// [함수]
/// 어떠한 값을 받아와서 기능을 수행하고, 어떤 값을 반환(return)할 수 있습니다.
/// 함수 내부에서 return을 통해 값을 반환하지않으면, null이 반환됩니다.

main() {
  getCat() {
    return 'cat';
  }

  print(getCat()); //cat

  getNothing() {}
  print(getNothing()); //null

  getAnimal(int type) {
    if (type == 1)
      return 'cat';
    else if (type == 2) return 'dog';
    return 'lion';
  }

  print(getAnimal(2)); //dog
}
