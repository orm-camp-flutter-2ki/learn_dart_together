import 'package:learn_dart_together/240401/dto/photo_search_dto.dart';
import 'package:learn_dart_together/240401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/model/result.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';
import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:test/test.dart';

import 'resource/photo_search.dart';

void main() {
  group('Photo Test', () {
    final repository = PhotoRepositoryImpl(api: PhotoApi());
    final expectedList = PhotoSearchDto
        .fromJson(expected)
        .hits!
        .map((e) => e.toPhoto())
        .toList();

    test('쿼리 테스트', () async {
      final test;
      final Result<List<Photo>> result = await repository
          .getPhotos('yellow+flowers&page=1&per_page=3'); // 3개만 가져오기
      switch (result) {
        case Success<List<Photo>>():
          test = result.data.length;
        case Error():
          test = result.e;
      }
      expect(test == 3, true);
    });

    test('비속어 테스트', () async {
      final test;
      final Result<List<Photo>> result = await repository
          .getPhotos('바보&page=1&per_page=3');
      switch (result) {
        case Success<List<Photo>>():
          test = result.data;
        case Error():
          test = result.e;
      }
      expect(test == 'Error : 비속어를 사용할 수 없습니다', true);
    });
  });
}