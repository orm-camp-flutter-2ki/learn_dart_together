import 'dart:core';

import 'package:dart_cli_practice/240401/model/photo.dart';
import 'package:dart_cli_practice/240401/repository/photo_repository.dart';
import 'package:dart_cli_practice/240401/repository/photo_repository_impl.dart';
import 'package:dart_cli_practice/240401/repository/photo_result.dart'
    as PhotoResult;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final PhotoRepository repository = PhotoRepositoryImpl();

  group('PhotoRepository 인터페이스의', () {
    group('구현체 PhotoRepositoryImpl에서', () {
      group('findPhotosByKeyword(String keyword) 메소드의 인자로', () {
        group('keyword 가 정상적일 때', () {
          test('Success<List<Photo>> 를 반환한다.', () async {
            final photosResult = await repository.findPhotosByKeyword('horror');

            expect(photosResult is PhotoResult.Success, true);
          });

          test('List<Photo> 타입의 데이터를 반환한다.', () async {
            final photosResult = await repository.findPhotosByKeyword('horror');

            expect((photosResult as PhotoResult.Success).data is List<Photo>,
                true);
          });
        });

        group('keyword 가 "바보" 일때', () {
          test('Error<List<Photo>> 를 반환한다.', () async {
            final photosResult = await repository.findPhotosByKeyword('바보');

            expect(photosResult is PhotoResult.Error, true);
          });
          test('"비속어를 사용할 수 없습니다" 에러 메세지를 반환한다.', () async {
            final photosResult = await repository.findPhotosByKeyword('바보');

            expect(
                (photosResult as PhotoResult.Error).message, '비속어를 사용할 수 없습니다');
          });
        });
      });
    });
  });
}
