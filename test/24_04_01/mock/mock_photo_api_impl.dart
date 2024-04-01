import 'package:learn_dart_together/24_04_01/data_source/impl/photo_api_impl.dart';
import 'package:learn_dart_together/24_04_01/dto/photo_response_dto.dart';
import 'package:mockito/mockito.dart';

import 'mock_data.dart';

class MockPhotoApiImpl extends Mock implements PhotoApiImpl {
  @override
  Future<PhotoResponseDto> getPhotos(String q) async =>
      super.noSuchMethod(Invocation.method(#getPhotos, [q]),
          returnValue: mockPhotoResponseDto);
}
