// source by 27_전종현
// https://github.com/orm-camp-flutter-2ki/learn_dart_together/blob/27_%EC%A0%84%EC%A2%85%ED%98%84/lib/common/extension.dart
extension NullCheck on Object? {
  bool get _isNotNullString =>
      this != null &&
      (this as String).toLowerCase() != 'null' &&
      (this as String).toLowerCase() != 'nan' &&
      (this as String).toLowerCase() != 'na';

  bool get isNotNull => (this is String) ? _isNotNullString : this != null;
}
