import 'name_space/media_type.dart';

class Content {
  final num id;
  final MediaType type;
  final String title;
  final String content;
  final DateTime createdAt;

  const Content({
    required this.id,
    required this.type,
    required this.title,
    required this.content,
    required this.createdAt,
  });
}