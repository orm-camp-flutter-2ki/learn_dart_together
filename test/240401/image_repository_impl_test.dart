import 'package:learn_dart_together/24_03_28/http/http.dart';
import 'package:learn_dart_together/24_04_01/image_search/data_source/image_api.dart';
import 'package:learn_dart_together/24_04_01/image_search/data_source/image_api_impl.dart';
import 'package:learn_dart_together/24_04_01/image_search/repository/image_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('imageApi test', () async {
    final ImageApi imageApi = ImageApiImpl(http: HttpImpl());
    final images = await ImageRepositoryImpl(imageApi: imageApi).getPhotos('yellow+flower', 'photo');
    expect(images, isNotNull);
  });
}