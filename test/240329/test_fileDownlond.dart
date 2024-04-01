import 'package:learn_dart_together/240329/data_source/picture_api.dart';
import 'package:test/test.dart';

void main() {
  test('', () async {
    final Stopwatch stopwatch = Stopwatch()..start();

    PictureApi pictureApi1 = PictureApi();
    pictureApi1.getPicture();
    PictureApi pictureApi2 = PictureApi();
    pictureApi1.getPicture();
    PictureApi pictureApi3 = PictureApi();
    pictureApi1.getPicture();
  });
  test('', () async {
    PictureApi pictureApi1 = PictureApi();
    await pictureApi1.getPicture();
    PictureApi pictureApi2 = PictureApi();
    await pictureApi1.getPicture();
    PictureApi pictureApi3 = PictureApi();
    await pictureApi1.getPicture();
  });
}
