import 'package:learn_dart_together/240328/dto/photo_dto.dart';
import 'package:learn_dart_together/240328/model/photo.dart';
import 'package:learn_dart_together/240328/repository/mock_photo_repo_impl.dart';
import 'package:learn_dart_together/240328/repository/mock_photo_repository.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('과제 3. DTO, Mapper 연습', () {
    MockPhotoRepository repository = MockPhotoRepositoryImpl();

    test('mockPhoto data 확인', () {
      // var aa = PhotoDto.fromJson(mockData);
      final photos = repository.getPhotos(mockData);
      print(photos.length);
    });
  });
}

final mockData = '''[{
  "id": 1,
  "type": "article",
  "title": "This is an article",
  "content": "This is the content of the article.",
  "created_at": "2020-01-01"
},
{
    "id": 2,
    "type": "image",
    "url": "https://example.com/image.jpg",
    "caption": "This is an image.",
    "created_at": "2020-02-02"
  },
  {
    "id": 3,
    "type": "video",
    "url": "https://example.com/video.mp4",
    "caption": "This is a video.",
    "created_at": "2020-03-03"
  }]
''';
