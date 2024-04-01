import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/data_source/photo_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/mapper/toTag.dart';
import '../mapper/toImageUrl.dart';
import '../model/imageUrl.dart';
import '../model/tags.dart';

enum NetworkError {
  requireTimeout,
  unknown,
}

sealed class Result<T> {
  factory Result.success(T data) = Success;
  factory Result.error(Exception e) = Error;
  factory Result.formaterror(String query) = FormatError;
  //
}

class Success<T> implements Result<T> {
  final T data;
  Success(this.data);
}

class Error<T> implements Result<T> {
  final Exception e;
  Error(this.e);
}

class FormatError<T> implements Result<T> {
  final String query;
  FormatError(this.query);
}

abstract interface class PhotoRepository {
  Future<Result<List<ImageUrl>>> getUrls(String query);
  Future<Result<List<Tag>>> getTags(String query);
}

class PhotoRepositoryImpl extends PhotoRepository {
  final PhotoApi _api;
  PhotoRepositoryImpl(this._api);

  @override
  Future<Result<List<ImageUrl>>> getUrls(String query) async {
    try {
      if (query == '바보') {
        return Result.formaterror('비속어를 사용할 수 없습니다.');
      }
      final result = await _api.getPhotos(query);
      return Result.success(result.map((e) => e.toUrl()).toList());
    } catch (e) {
      return Result.error(Exception('알 수 없는 네트워크 에러'));
    }
  }

  @override
  Future<Result<List<Tag>>> getTags(String query) async {
    try {
      if (query == '바보') {
        return Result.formaterror('비속어를 사용할 수 없습니다.');
      }
      final result = await _api.getPhotos(query);
      return Result.success(result.map((e) => e.toTag()).toList());
    } catch (e) {
      return Result.error(Exception('알 수없는 네트워크 에러'));
    }
  }
}
