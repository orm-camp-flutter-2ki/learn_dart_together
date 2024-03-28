import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/dataClass/album.dart';
import 'package:learn_dart_together/24_03_26/repository/albumRepository.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('AlbumsRepository.getAlbums()로 리스트를 가져와서 첫번째 객체를 확인', () async{
    final expected = Album(1, 1, "quidem molestiae enim");
    AlbumRepository album = AlbumRepository();
    final list = await album.getAlbums();
    expect(list.first, expected);
  });
}