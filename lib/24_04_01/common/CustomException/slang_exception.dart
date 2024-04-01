class SlangException implements Exception {
  final String message;

  SlangException(this.message);

  @override
  String toString() {
    return message;
  }

  String get getMessage => message;
}
