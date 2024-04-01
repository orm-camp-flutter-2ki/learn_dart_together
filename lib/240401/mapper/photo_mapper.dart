import 'package:learn_dart_together/240401/dto/photo_dto.dart';
import 'package:learn_dart_together/240401/model/photo.dart';

extension ToPhoto on Hits {
  //기능 확장
  Photo toPhoto() {
    //포토는 투포트를 만드는 거라서 포토에 맞춰줘야하기 때문에 뒤에다가 작성해야함
    return Photo(tags: tags ?? 'unknown', imageUrl: userImageURL ?? 'unknown');
  }
}
