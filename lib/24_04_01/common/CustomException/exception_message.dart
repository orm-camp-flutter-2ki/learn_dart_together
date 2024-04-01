enum ExceptionMessage {
  networkError('알 수 없는 네트워크 에러'),
  serverError('서버 에러'),
  slangError('비속어를 사용할 수 없습니다'),
  unknownError('알 수 없는 네트워크 에러');

  final String message;

  const ExceptionMessage(this.message);

}
