import 'package:learn_dart_together/240326/model_class/p2_model_class.dart';
import 'package:learn_dart_together/240326/repository/p2_album_repository.dart';

void main() async {
  final albumRepository = AlbumRepository();

  final List<Album> albumTop10 = await albumRepository.getAlbumsTop10();
  print(albumTop10.length);
  print(albumTop10);
}
