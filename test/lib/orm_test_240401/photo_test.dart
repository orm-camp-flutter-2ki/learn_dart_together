import 'package:learn_dart_together/orm_240401/data_resource/photo_api_impl.dart';
import 'package:learn_dart_together/orm_240401/dto/photo_respone.dart';
import 'package:learn_dart_together/orm_240401/model/photo.dart';
import 'package:learn_dart_together/orm_240401/repository/photo_repository_impl.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('비속어 테스트', () async {
    final results = await PhotoRepositoryImpl(PhotoApiImpl()).getPhoto('바보');

    switch (results) {
      case Success<List<Photo>>():
        print(results.toString());
      case Error():
        print(results.e);
    }
  });
}
