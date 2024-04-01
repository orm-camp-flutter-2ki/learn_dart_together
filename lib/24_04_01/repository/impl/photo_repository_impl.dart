import 'package:learn_dart_together/24_04_01/common/CustomException/exception_message.dart';
import 'package:learn_dart_together/24_04_01/common/CustomException/slang_exception.dart';
import 'package:learn_dart_together/24_04_01/common/result.dart';
import 'package:learn_dart_together/24_04_01/common/slang_list.dart';
import 'package:learn_dart_together/24_04_01/mapper/hit_mapper.dart';

import '../../data_source/interface/photo_api.dart';
import '../../model/photo.dart';
import '../interface/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;

  PhotoRepositoryImpl(this._photoApi);

  @override
  Future<Result<List<Photo>, Exception>> getPhotos(
      List<String>? q, String? lang, String? imageType) async {
    try {
      qValidate(q);
      final response =
          await _photoApi.getPhotos(_paramToQuery(q, lang, imageType));

      return Result.success(
          response.hits?.map((e) => e.toPhoto()).toList() ?? []);
    } on SlangException catch (e) {
      return Result.error(e);
    } catch (e) {
      return Result.error(Exception(ExceptionMessage.networkError));
    }
  }

  String _paramToQuery(List<String>? q, String? lang, String? imageType) {
    StringBuffer query = StringBuffer();
    if (q != null) {
      query.write('q=');
      query.write(q.join('+'));
    }
    if (lang != null) {
      query.write('&lang=');
      query.write(lang);
    }
    if (imageType != null) {
      query.write('&image_type=');
      query.write(imageType);
    }

    return query.toString();
  }

  void qValidate(List<String>? q) {
    final qList = q ?? [];
    for (String slang in slangList) {
      if (qList.contains(slang)) {
        throw SlangException(ExceptionMessage.slangError.message);
      }
    }
  }
}
