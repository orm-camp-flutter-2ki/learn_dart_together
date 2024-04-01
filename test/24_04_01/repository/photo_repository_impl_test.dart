import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_04_01/common/CustomException/exception_message.dart';
import 'package:learn_dart_together/24_04_01/common/CustomException/slang_exception.dart';
import 'package:learn_dart_together/24_04_01/common/result.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/repository/impl/photo_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mock_data.dart';
import '../mock/mock_photo_api_impl.dart';

void main() {
  group('PhotoRepositoryImpl 클래스', () {
    final photoApi = MockPhotoApiImpl();
    final photoRepository = PhotoRepositoryImpl(photoApi);

    setUp(() {
      reset(photoApi);
    });
    group('getPhotos 메소드는', () {
      test('인자로 받은 q에 바보라는 element가 있으면 SlangException을 가진 Result 객체를 반환한다.',
          () async {
        // Given
        final q = ['바보'];
        SlangException expected =
            SlangException(ExceptionMessage.slangError.message);

        // When
        Result<List<Photo>, Exception> result =
            await photoRepository.getPhotos(q: q);
        SlangException? resultException = result.whenOrNull(error: (e) {
          if (e is SlangException) {
            return e;
          }
        });

        // Then
        expect(resultException?.getMessage, expected.getMessage);
      });

      test('성공적으로 쿼리를 날리면 List<Photo>를 가진 Result 객체를 반환한다.', () async {
        // Given
        final query = 'q=yellow+sky';
        final q = ['yellow', 'sky'];
        final photoResponseDto = mockPhotoResponseDto;
        when(photoApi.getPhotos(query))
            .thenAnswer((_) async => photoResponseDto);

        // When
        Result<List<Photo>, Exception> result =
            await photoRepository.getPhotos(q: q);

        // Then
        List<Photo>? resultData = result.whenOrNull(success: (data) => data);

        expect(resultData?.equals(mockPhotoData), isTrue);
      });

      test('인자로 념겨준 파라미터를 조합해서 쿼리를 만들어 photoApi.getPhotos에 넘겨준다. ', () async {
        // Given
        final q = ['yellow', 'sky'];
        final lang = 'ko';
        final imageType = 'photo';
        final expectedQuery =
            'q=${q[0]}+${q[1]}&lang=$lang&image_type=$imageType';

        final photoResponseDto = mockPhotoResponseDto;
        when(photoApi.getPhotos(expectedQuery))
            .thenAnswer((_) async => photoResponseDto);

        // When
        await photoRepository.getPhotos(q: q, lang: lang, imageType: imageType);

        // Then
        verify(photoApi.getPhotos(expectedQuery)).captured;
      });
    });
  });
}
