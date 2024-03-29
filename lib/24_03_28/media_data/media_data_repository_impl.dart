import 'dart:convert';

import 'package:learn_dart_together/24_03_28/media_data/media_data.dart';
import 'package:learn_dart_together/24_03_28/media_data/media_data_dto.dart';
import 'package:learn_dart_together/24_03_28/media_data/media_data_mapper.dart';
import 'package:learn_dart_together/24_03_28/media_data/media_data_repository.dart';
import 'package:learn_dart_together/http/custom_http_client.dart';

class MediaDataRepositoryImpl implements MediaDataRepository {
  final CustomHttpClient _httpClient;
  MediaDataRepositoryImpl(this._httpClient);

  @override
  Future<List<MediaData>> getMedias() async{
    final response = await _httpClient.get('');
    List jsonList = jsonDecode(response);

    return jsonList.map((e) => MediaDataDto.fromJson(e).toMediaData()).toList();
  }
}
