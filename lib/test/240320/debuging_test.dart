import 'package:learn_dart_together/240326/data_source/photo_api.dart';
import 'package:test/test.dart';

void main() {
  test('debug Test', () async {
    final api = PhotoApi();
    final potos = await api.getPhotos();
    potos.where((e) => e.albumId == 1).forEach(print);
  });
}
