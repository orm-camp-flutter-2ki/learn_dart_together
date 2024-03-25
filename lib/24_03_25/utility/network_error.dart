enum NetworkingError {
  unknown,
  taskingError,
  badClientRequest,
  badServerResponse,
  corruptedData;

  String get message {
    switch (this) {
      case NetworkingError.unknown:
        return "알 수 없는 에러입니다.";
      case NetworkingError.taskingError:
        return "DataTask 작업 중 에러가 발생했습니다.";
      case NetworkingError.badClientRequest:
        return "클라이언트 측 에러입니다.";
      case NetworkingError.badServerResponse:
        return "서버 측 에러입니다.";
      case NetworkingError.corruptedData:
        return "손상된 데이터입니다.";
    }
  }
}