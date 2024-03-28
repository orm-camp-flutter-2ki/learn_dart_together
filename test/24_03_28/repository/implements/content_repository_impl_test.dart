import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:learn_dart_together/24_03_28/data_source/content_api.dart';
import 'package:learn_dart_together/24_03_28/model/content.dart';
import 'package:learn_dart_together/24_03_28/model/name_space/media_type.dart';
import 'package:learn_dart_together/24_03_28/repository/implements/content_repository_impl.dart';
import 'package:learn_dart_together/24_03_28/repository/interface/content_repository.dart';
import 'package:test/test.dart';

void main() {
  group('ContentRepository test', () {
    test('createdAt field DateTime type test', () async {
      final MockClient mockClient = MockClient((request) async {
        if (request.url.toString() == 'fakeUri') {
          return http.Response(mockString, 200,
              headers: {'content-type': 'application/json; charset=utf-8'});
        }

        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });

      ContentRepository repo = ContentRepositoryImpl(ContentApi(client: mockClient));
      List<Content> contentList = await repo.getContentList();

      expect(contentList[0].createdAt.runtimeType, DateTime);
    });

    test('ContentRepositoryImpl type field null validate test', () async {
      final MockClient mockClient = MockClient((request) async {
        if (request.url.toString() == 'fakeUri') {
          return http.Response(mockStringWithEmptyValue, 200,
              headers: {'content-type': 'application/json; charset=utf-8'});
        }

        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });

      ContentRepository repo = ContentRepositoryImpl(ContentApi(client: mockClient));
      List<Content> contentList = await repo.getContentList();

      List<MediaType> expectValue = [MediaType.article, MediaType.unknown, MediaType.unknown];
      List<MediaType> givenValue = contentList.map((e) => e.type).toList();

      expect(expectValue, givenValue);
    });
  });
}

final String mockString = '''
[
  {
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
  }
]
''';

final String mockStringWithEmptyValue = '''
[
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
]
''';
