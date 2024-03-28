import 'package:learn_dart_together/24_03_28/data_source/interface/photo_api.dart';
import 'package:learn_dart_together/24_03_28/model/photo.dart';
import 'package:mockito/mockito.dart';

class MockPhotoApiImpl extends Mock implements PhotoApi {
  final photos = [
    Photo(
        id: 1,
        type: 'article',
        title: 'This is an article',
        content: 'This is the content of the article.',
        url: 'unknown',
        caption: 'unknown',
        createdAt: DateTime(2020, 01, 01))
  ];

  @override
  Future<List<Photo>> getPhotos() async =>
      super.noSuchMethod(Invocation.getter(#getPhotos),
          returnValue: photos, returnValueForMissingStub: photos);
}
