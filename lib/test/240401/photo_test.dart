import 'package:learn_dart_together/240401/repository/result.dart';
import 'package:test/test.dart';

import '../../240401/model/photo.dart';
import '../../240401/repository/photo_repository_impl.dart';

void main() {
  test('test 바보', () async {
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('바보');

    switch (result) {
      case Success<List<Photo>>():
        print('성공 : ${result.data}');
        break;
      case Error<List<Photo>>():
        print('성공 : ${result.e}');
        break;
    }
  });

  test('test yellow', () async {
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('yellow');

    switch (result) {
      case Success<List<Photo>>():
        print('성공 : ${result.data}');
        break;
      case Error<List<Photo>>():
        print('성공 : ${result.e}');
        break;
    }
  });

  test('test yuouououo', () async {
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('yuouououo');

    switch (result) {
      case Success<List<Photo>>():
        print('성공 : ${result.data}');
        break;
      case Error<List<Photo>>():
        print('성공 : ${result.e}');
        break;
    }
  });
}

final expected =
    'https://cdn.pixabay.com/user/2015/03/30/12-22-31-508_250x250.jpg';
