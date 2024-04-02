import '../response/error_code.dart';

abstract class ImageException {

  final ErrorCode errorCode;
  final Object? exception;
  final StackTrace? stackTrace;

  ImageException({this.exception, this.stackTrace, required this.errorCode});

  void handleException() {
    switch(errorCode) {
      case ErrorCode.usedWrongLanguage: {
        print(errorCode);
        print(errorCode.message);
        /*
        1. 경고 1회 추가
        2. 누적된 경고 횟수 확인 - 3회 경고 받은 경우 계정 일주일 정지
        */
        break;
      }
      case ErrorCode.unknownNetworkError: {
        print(errorCode);
        print(errorCode.message);
        /*


         */
        break;
      }
    }
  }
}
