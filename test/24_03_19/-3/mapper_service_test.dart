import 'dart:convert';

import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_19/-3/department.dart';
import 'package:learn_dart_together/24_03_19/-3/employee.dart';
import 'package:learn_dart_together/24_03_19/-3/mappable.dart';
import 'package:learn_dart_together/24_03_19/-3/mapper_service.dart';
import 'package:test/test.dart';

void main() {
  const String path = 'test/24_03_19/-3/resource/company.txt';

  group('MapperService 클래스', () {
    FileService? fileService;
    setUp(() => fileService = FileService());
    tearDown(() {
      fileService!.deleteFile(path);
      fileService = null;
    });
    group('serialize 메소드는', () {
      test('객체를 직렬화해서 특정 경로에 파일로 저장한다.', () {
        // Given
        Department department = Department('IT', Employee('John Doe', 1000));
        MapperService<Department> mapperService = MapperService();
        String expected = jsonEncode(department.toJson());
        
        // When
        mapperService.serialize(path, department);

        // Then
        expect(fileService!.readFile(path), equals(expected));
      });
    });

    group('deserialize 메소드는', () {
      test('특정 경로에 파일을 읽어서 객체로 역직렬화해서 반환한다.', () {
        // Given
        Department department = Department('IT', Employee('John Doe', 1000));
        MapperService<Department> mapperService = MapperService();
        mapperService.serialize(path, department);

        // When
        Department result = mapperService.deserialize(path, department);

        // Then
        expect(result, equals(department));
      });
    });
  });
}
