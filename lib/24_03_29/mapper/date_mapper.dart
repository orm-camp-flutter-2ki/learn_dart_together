import 'package:learn_dart_together/24_03_29/dto/date_dto.dart';
import 'package:learn_dart_together/24_03_29/model/date.dart';

extension DateDtoToDate on DateDto {
  Date toDate() {
    return Date(
      maximum: maximum ?? getNow(),
      minimum: minimum ?? getNow(),
    );
  }

  String getNow() {
    return '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';
  }
}
