enum ErrorCode {

  unknownNetworkError(message: '알 수 없는 네트워크 문제가 발생했습니다.'),
  usedWrongLanguage(message: '비속어를 사용할 수 없습니다.');

  const ErrorCode({required this.message});

  final String message;
}