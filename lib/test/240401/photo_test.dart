import 'package:learn_dart_together/240401/repository/result.dart';
import 'package:test/test.dart';

import '../../240401/model/photo.dart';
import '../../240401/repository/photo_repository_impl.dart';

void main() {
  final repository = PhotoRepositoryImpl();

  test('test 바보', () async {
    // freezd 사용할 시에만 사용 가능!
    // .whenOrNull(error: (e) => e) String type 변환하는 기능

    final expected = '비속어를 사용할 수 없습니다.';
    final repository = PhotoRepositoryImpl();
    final result = await repository.getPhotos('바보');

    final error = result.whenOrNull(error: (e) => e);
    expect(error, expected);
  });

  test('test yellow', () async {
    final result = await repository.getPhotos('yellow');

    switch (result) {
      case Success<List<Photo>>():
        print('성공 : ${result.data}');
      case Error<List<Photo>>():
        print('실패 : ${result.e}');
    }
  });

  test('test yuouououo', () async {
    final result = await repository.getPhotos('yuouououo');

    switch (result) {
      case Success<List<Photo>>():
        print('성공 : ${result.data}');
      case Error<List<Photo>>():
        print('실패 : ${result.e}');
    }
  });
}

final expected =
    'https://cdn.pixabay.com/user/2015/03/30/12-22-31-508_250x250.jpg';
