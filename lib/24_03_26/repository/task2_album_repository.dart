import 'package:learn_dart_together/24_03_26/data_source/task2_album_api.dart';
import '../model_class/task2_album.dart';
import '../interfaces/task2_album_repository_interface.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    return _api.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    return _api.getAlbumsTop10();
  }
}

Future<void> main() async {
  final albumRepository = AlbumRepositoryImpl();
  final album = await albumRepository.getAlbums();

  final albumRepository2 = AlbumRepositoryImpl();
  final album2 = await albumRepository2.getAlbumsTop10();

  print('앨범 정보는 $album, 탑 10은 $album2');
}
