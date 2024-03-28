import 'package:collection/collection.dart';
import 'package:learn_dart_together/240328/data_source/photo_api.dart';
import 'package:learn_dart_together/240328/dto/photo/photo_dto.dart';
import 'package:learn_dart_together/240328/repository/photo_repository.dart';
import 'package:test/test.dart';

void main() {
  group('Photo Test', () {
    PhotoRepository photoRepository = PhotoRepositoryImpl(api: PhotoApi());
    PhotoRepository mockPhotoRepository = PhotoRepositoryImpl(api: MockPhotoApi());

    test('List 비교', () async {
      final photos = await photoRepository.getPhotos();
      final mockPhotos = await mockPhotoRepository.getPhotos();

      expect(photos.equals(mockPhotos), true);
    });
  });
}

class MockPhotoApi implements PhotoApi {
  final mockPhotoList = [
    {
      "id": "1",
      "type": "article",
      "title": "This is an article",
      "content": "This is the content of the article.",
      "created_at": "2020-01-01"
    },
    {
      "id": 2,
      "type": null,
      "url": "https://example.com/image.jpg",
      "caption": "This is an image.",
      "created_at": "2020-02-02"
    },
    {
      "id": 3,
      "url": "https://example.com/video.mp4",
      "caption": "This is a video.",
      "created_at": "2020-03-03"
    }
  ];

  @override
  Future<List<PhotoDto>> getPhotos() async {
    final jsonList = mockPhotoList;

    return jsonList.map((e) => PhotoDto.fromJson(e)).toList();
  }
}