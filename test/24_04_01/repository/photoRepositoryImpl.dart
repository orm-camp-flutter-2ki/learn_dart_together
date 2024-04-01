import 'package:http/testing.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/data_source/photo_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/model/imageUrl.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/model/tags.dart';

import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/repository/photoRepositoryImpl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('이미지 검색기능 작성,', () {
    test('예외처리 메세지 확인 테스트', () async {
      // given when then
      PhotoRepositoryImpl repo = PhotoRepositoryImpl(PhotoApi());

      expect(await repo.getTags('yellow flower'), isA<Success<List<Tag>>>());
      expect(await repo.getUrls('바보'), isA<FormatError<List<ImageUrl>>>());

      // expect(actual, matcher)
    });
  });
}
