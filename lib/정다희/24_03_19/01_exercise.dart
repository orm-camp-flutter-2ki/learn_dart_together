void main() {
  try {
    final numString = '10.5';
    int num = int.parse(numString);
  } catch (e) {
    print('e:$e');
    int num = 0;
    print('thisisnum: $num');
  }
  // on catch 문과 함께 사용은 안됨
  // on formatException{
  //
  // }
  finally {
    print('마지막 실행문');
  }
}
