import 'package:learn_dart_together/0401/common/exception/image_exception.dart';

class VectorException extends ImageException {

  VectorException({required super.errorCode, super.exception, super.stackTrace});
}