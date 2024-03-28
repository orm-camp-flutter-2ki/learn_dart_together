import 'package:learn_dart_together/24_03_28/model/content.dart';

abstract interface class ContentRepository {
  Future<List<Content>> getContentList();
}