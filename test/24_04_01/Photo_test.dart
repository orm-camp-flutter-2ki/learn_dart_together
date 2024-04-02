import 'package:learn_dart_together/24_04_01/model/photo.dart';

import 'package:learn_dart_together/24_04_01/repository/photo_repository_impl.dart';
import 'package:learn_dart_together/24_04_01/repository/result.dart';
import 'package:test/test.dart';

void main() {
  test('test 바보', () async {
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('바보');

    switch (result) {
      case Error<List<Photo>, Exception>():
        print('실패 : ${result.error.toString()}');
      case Success<List<Photo>, Exception>():
        print('성공 : ${result.data.toString()}');
    }
  });
  test('test yellow', () async {
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('yellow');

    switch (result) {
      case Error<List<Photo>, Exception>():
        print('실패 : ${result.error.toString()}');
      case Success<List<Photo>, Exception>():
        print('성공 : ${result.data.toString()}');
    }
  });
  test('test 4k wallpaper', () async {
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('4k wallpaper');

    switch (result) {
      case Error<List<Photo>, Exception>():
        print('실패 : ${result.error.toString()}');
      case Success<List<Photo>, Exception>():
        print('성공 : ${result.data.toString()}');
    }
  });
}

final expected =
    'https://cdn.pixabay.com/user/2015/03/30/12-22-31-508_250x250.jpg';
