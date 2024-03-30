import 'package:learn_dart_together/240329/Dto/post_dto.dart';
import 'package:learn_dart_together/240329/model/post/post.dart';

extension TOPost on PostDto {
  Post toPost() {
    return Post(
      userId: userId?.toInt() ?? -1,
      id: id?.toInt() ?? -1,
      title: title ?? '',
      body: body ?? '',
    );
  }
}

extension ToPostDto on Post {
  PostDto toPostDto() {
    return PostDto(
      userId: userId,
      id: id,
      title: title,
      body: body,
    );
  }
}
