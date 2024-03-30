import 'package:learn_dart_together/240329/dto/post_dto.dart';
import 'package:learn_dart_together/240329/model/post.dart';

extension PostMapper on PostDto {
  Post toPost() {
    return Post(
      userId: userId != null ? userId!.toInt() : -1,
      id: id != null ? id!.toInt() : -1,
      title: title ?? '',
      body: body ?? '',
    );
  }
}
