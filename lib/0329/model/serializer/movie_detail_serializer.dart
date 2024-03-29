import 'package:learn_dart_together/0329/model/movie_detail.dart';

extension Serializer on MovieDetail {
  Map<String, dynamic> toJson() =>
      {'title': title, 'tagline': tagline, 'overview': overview};
}
