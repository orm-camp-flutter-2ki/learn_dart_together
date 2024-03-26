import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/repository.dart';
import 'package:test/test.dart';

void main() {
  group('photo test', () {
    test('photo get test', () async {
      final photo = await PhotoApiImpl().getPhotos(1);
      expect(
          photo[0].title, "accusamus beatae ad facilis cum similique qui sunt");
    });
  });
}
