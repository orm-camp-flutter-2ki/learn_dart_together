import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/impl/photo_repository_impl.dart';
import 'package:learn_dart_together/240326/model/photo.dart';
import 'package:test/test.dart';

void main() {
  group('Photo Test', () {
    final repository = PhotoRepositoryImpl();
    List json = jsonDecode(File('test/240326/resource/expected_photo.json').readAsStringSync());
    final expected = json.map((e) => Photo.fromJson(e)).toList();

    test('List 비교', () async {
      final photos = await repository.getPhotos(1);

      expect(photos.equals(expected), true);
    });

    test('첫 번째 Index 비교', () async {
      final photos = await repository.getPhotos(1);

      expect(photos[0] == expected[0], true);
      expect(photos[0].title == expected[0].title, true);
    });

    test('albumId 확인', () async {
      final photos = await repository.getPhotos(1);

      photos.forEach((element) => expect(element.albumId == 1, true));
    });
  });
}