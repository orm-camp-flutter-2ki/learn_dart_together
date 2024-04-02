import 'package:test/test.dart';
import 'package:untitled2/240401/model/photo.dart';
import 'package:untitled2/240401/repository/photo_repository_impl.dart';
import 'package:untitled2/240401/repository/result.dart';

void main() {


  test('photo test', () async {
    PhotoRepositoryImpl impl = PhotoRepositoryImpl();
    final instance = await impl.findPhotosByKeyword('바보');
    switch (instance) {
      case Success<List<Photo>>():
        print(instance.data.toString());
      case Error<List<Photo>>():
        print(instance.e);
    }

  });
}