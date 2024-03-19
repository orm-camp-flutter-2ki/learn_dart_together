import 'dart:convert';

import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_19/-3/mappable.dart';

class MapperService<T extends Mappable> {
  final _fileService = FileService();

  void serialize(String path, T object) {
    _fileService.writeToFile(path, JsonEncoder().convert(object.toJson()));
  }

  T deserialize(String path, T Function(Map<String, dynamic>) fromJson) {
    return fromJson(json.decode(_fileService.readFile(path)));
  }
}