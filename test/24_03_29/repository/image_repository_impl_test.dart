import 'dart:io';

import 'package:learn_dart_together/24_03_29/repository/impl/image_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mock_file_service_impl.dart';
import '../mock/mock_image_api_impl.dart';

void main() {
  group('MovieInfoRepositoryImpl 클래스', () {
    final mockFileService = MockFileServiceImpl();
    final mockImageApi = MockImageApiImpl();
    final mockImageUint8List = getMockImage();
    final mockFile = getMockFile();
    final imageRepository = ImageRepositoryImpl(
        imageApi: mockImageApi, fileService: mockFileService);

    setUp(() {
      reset(mockFileService);
      reset(mockImageApi);
    });

    group('getImage 메소드는', () {
      test('특정 url의 이미지를 가져와서 Uint8List로 반환해서 반환한다.', () async {
        // Given
        final url = 'url';
        when(mockImageApi.getImage(url))
            .thenAnswer((_) async => mockImageUint8List);

        // When
        final result = await imageRepository.getImage(url);

        // Then
        expect(result, mockImageUint8List);
      });
    });

    group('saveImageFile 메소드는', () {
      test(
          '인자로 받은 Uint8List를 FileService의 asyncWriteToFileBytes 메소드를 호출해서 저장한다.',
          () async {
        // Given
        final imageName = 'icon.ico';
        final path = 'test/24_03_29/resource';
        when(mockFileService.asyncWriteToFileBytes(
                mockImageUint8List, imageName, path))
            .thenAnswer((_) async => mockFile);

        // When
        final result = await imageRepository.saveImageFile(
            mockImageUint8List, imageName, path);

        // Then
        expect(result, mockFile);
      });
    });
  });
}
