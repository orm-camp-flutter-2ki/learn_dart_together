class ExceptionService {
  static const int defaultResult = 0;
  String _numString;

  ExceptionService({required String numString}) : _numString = numString;

  String get numString => _numString;

  set numString(String value) => _numString = value;

  int run() {
    try {
      return int.parse(numString);
    } on FormatException catch (e) {
      print('FormatException: $e');
      return defaultResult;
    }
  }
}
