extension NullCheck on Object? {
  bool get _isNotNullString =>
      this != null &&
      (this as String).toLowerCase() != 'null' &&
      (this as String).toLowerCase() != 'nan' &&
      (this as String).toLowerCase() != 'na';

  bool get isNotNull => (this is String) ? _isNotNullString : this != null;
}
