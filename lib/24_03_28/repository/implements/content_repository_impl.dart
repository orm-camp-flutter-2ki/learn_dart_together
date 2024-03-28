import 'package:learn_dart_together/24_03_28/data_source/content_api.dart';
import 'package:learn_dart_together/24_03_28/dto/Content_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/content_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/content.dart';
import 'package:learn_dart_together/24_03_28/repository/interface/content_repository.dart';

class ContentRepositoryImpl implements ContentRepository {
  final ContentApi _api;

  ContentRepositoryImpl(this._api);

  @override
  Future<List<Content>> getContentList() async {
    final List<ContentDto> dtoList =  await _api.getContentList();
    final List<Content> contentList = dtoList.map((e) => e.transferDtoContent()).toList();

    return contentList;
  }

}