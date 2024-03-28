import 'package:learn_dart_together/24_03_28/data_source/interface/photo_api.dart';
import 'package:learn_dart_together/24_03_28/dto/photo_dto.dart';
import 'package:mockito/mockito.dart';

class MockPhotoApiImpl extends Mock implements PhotoApi {
  final photos = [
    PhotoDto(
        id: '1',
        type: 'article',
        title: 'This is an article',
        content: 'This is the content of the article.',
        url: 'unknown',
        caption: 'unknown',
        createdAt: '2020-01-01')
  ];

  @override
  Future<List<PhotoDto>> getPhotos() async =>
      super.noSuchMethod(Invocation.getter(#getPhotos),
          returnValue: photos, returnValueForMissingStub: photos);
}
