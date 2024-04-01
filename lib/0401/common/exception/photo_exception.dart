import 'package:learn_dart_together/0401/common/exception/image_exception.dart';

class PhotoException extends ImageException {

  PhotoException({required super.errorCode, super.exception, super.stackTrace});

}