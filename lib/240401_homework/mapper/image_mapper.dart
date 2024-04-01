import 'package:learn_dart_together/240401_homework/dto/imageDto.dart';
import 'package:learn_dart_together/240401_homework/dto/photoDto.dart';
import 'package:learn_dart_together/240401_homework/model/image.dart';
import 'package:learn_dart_together/240401_homework/model/photo.dart';

extension ToImageDto on ImageDto {
  Image toImage() {
    return Image(
      total: total ?? 0,
      totalHits: totalHits ?? 0,
      hits: hits != null ? hits!.map((e) => e.toPhoto()).toList() : <Photo>[],
    );
  }
}

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: webformatURL ?? '',
    );
  }
}
