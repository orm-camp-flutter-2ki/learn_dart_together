

import 'package:test/scaffolding.dart';
import 'package:untitled2/240326/data_source/albums_api.dart';

void main() {
  test('Albums Test', () async {

    AlbumsApi albumsApi = AlbumsApi();
    final albums = await albumsApi.getAlbums();
    final album = await albumsApi.getAlbum(1);
    print(albums);
  });
}