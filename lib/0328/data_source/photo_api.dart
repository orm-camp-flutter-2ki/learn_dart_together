import 'dart:convert';

import 'package:learn_dart_together/0328/dto/mapper/photo_mapper.dart';
import 'package:learn_dart_together/0328/model/photo.dart';

import '../dto/photo_dto.dart';

class PhotoApi {

  Future<List<Photo>> getPhoto() async {
    List decodedJson = jsonDecode(mockData2);
    return decodedJson.map((e) => PhotoDto.fromJson(e)).map((e) => e.toPhoto()).toList();
  }
}

String mockData = '''[
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
]''';


String mockData2 = '''
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