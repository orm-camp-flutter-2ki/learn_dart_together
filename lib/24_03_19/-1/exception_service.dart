class ExceptionService {
  static const int defaultResult = 0;
  String _numString;

  ExceptionService({required String numString}) : _numString = numString;

  String get numString => _numString;

  set numString(String value) => _numString = value;

  int convertStringToInt() {
    try {
      return int.parse(numString);
    } on FormatException catch (e) {
      print('정수형으로 포매팅이 불가능하여 기본값을 반환합니다.');
      return defaultResult;
    }
  }
}
