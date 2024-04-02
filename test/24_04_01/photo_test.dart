import 'package:learn_dart_together/24_04_01/data_source/photo_api.dart';
import 'package:learn_dart_together/24_04_01/repository/photo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('photo_test', () async {
    final mockDataList = mockData['hits'] as List;
    final expected = mockDataList.map((e) => e.toPhoto()).toList();
    //given
    final repository = PhotoRepositoryImpl(PhotoApi());

    //when
    final result = await repository.getPhotos('flower');
    print(result);

    //then
    expect(result, expected.first.contains('flower'));
  });
}

final mockData = {
  "total": 4692,
  "totalHits": 500,
  "hits": [
    {
      "id": 195893,
      "pageURL": "https://pixabay.com/en/blossom-bloom-flower-195893/",
      "type": "photo",
      "tags": "blossom, bloom, flower",
      "previewURL":
          "https://cdn.pixabay.com/photo/2013/10/15/09/12/flower-195893_150.jpg",
      "previewWidth": 150,
      "previewHeight": 84,
      "webformatURL":
          "https://pixabay.com/get/35bbf209e13e39d2_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 360,
      "largeImageURL":
          "https://pixabay.com/get/ed6a99fd0a76647_1280.jpg",
      "imageWidth": 4000,
      "imageHeight": 2250,
      "imageSize": 4731420,
      "views": 7671,
      "downloads": 6439,
      "favorites": 1,
      "likes": 5,
      "comments": 2,
      "user_id": 48777,
      "user": "Josch13",
      "userImageURL":
          "https://cdn.pixabay.com/user/2013/11/05/02-10-23-764_250x250.jpg"
    },
  ]
};