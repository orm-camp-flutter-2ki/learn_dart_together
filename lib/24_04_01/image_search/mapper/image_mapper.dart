import 'package:learn_dart_together/24_04_01/image_search/dto/hits_dto.dart';
import 'package:learn_dart_together/24_04_01/image_search/model/image_model.dart';

extension ImageDtoToImage on HitsDto {
  ImageModel toImage() {
    return ImageModel(
      tags: tags ?? '',
      previewURL: previewURL ?? '',
    );
  }
}
