import 'package:learn_dart_together/24_04_01/dto/results_dto.dart';
import 'package:learn_dart_together/24_04_01/mapper/photo_mapper.dart';
import 'package:learn_dart_together/24_04_01/model/results.dart';

extension ResultsDtoToPhoto on ResultsDto {
  Results toResults() {
    // results dto 안에 photo가 아니라 photoDto가 있으므로
    return Results(photo: photoDto?.map((e) => e.toPhoto()).toList() ?? []);
  }
}
