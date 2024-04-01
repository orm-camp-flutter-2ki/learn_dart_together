import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/repository/result.dart';
import 'package:test/test.dart';

import '../../240401/repository/photo_repository_impl.dart';

void main() {
  // test('photo url test', () async {
  //   final repository = PhotoRepositoryImpl();
  //   final photos = await repository.getPhotos('yellow');
  //   final result = photos;
  //
  //   expect(result, expected);
  // });
  //
  // test('photo error test', () async {
  //   final repository = PhotoRepositoryImpl();
  //   final result = await repository.getPhotos('yuiyiuyiuyiu');
  //   expect(result, throwsException);
  // });
  // test('photo q test', () async {
  //   final repository = PhotoRepositoryImpl();
  //   final photos = await repository.getPhotos('바보');
  //   print(photos);
  // });
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
  test('test yuouououo', () async {
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('yuouououo');

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
