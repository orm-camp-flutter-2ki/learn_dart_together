import 'dart:async';

import 'package:learn_dart_together/240328/data_source/mock_photo_api.dart';
import 'package:learn_dart_together/240328/dto/photo_dto.dart';
import 'package:learn_dart_together/240328/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240328/model/photo.dart';

enum NetworkError {
  requestTimeout,
  unknown,
}

// repository 에서 Result 타입을 반환하도록 수정
// abstract interface class PhotoRepository {
//   Future<Result<List<Photo>, NetworkError>> getPhotos();
// }
//
// class PhotoRepositoryImpl implements PhotoRepository {
//   final MockPhotoApi _api;
//
//   PhotoRepositoryImpl(this._api);
//
//   @override
//   Future<Result<List<Photo>, NetworkError>> getPhotos() async {
//     try {
//       final List<PhotoDto> photoDtoList =
//           await _api.getPhotos('').timeout(Duration(seconds: 10));
//
//       return Result.success(photoDtoList.map((e) => e.toPhoto)).toList();
//
//       // 두 가지 이상의 에러를 리턴할 수 있다.
//     } on TimeoutException {
//       return Result.error(NetworkError.requestTimeout);
//     } catch (e) {
//       return Result.error(NetworkError.unknown);
//     }
//   }
// }
//
// void main() async {
//   final photoRepository = PhotoRepositoryImpl(MockPhotoApi());
//
//   final result = await photoRepository.getPhotos();
//
//   switch (result) {
//     case Success<List<Photo>, NetworkError>():
//       print(result.data);
//     case Error<List<Photo>, NetworkError>():
//       {
//         switch (result.error) {
//           case NetworkError.requestTimeout:
//             print('타임 아웃');
//           case NetworkError.unknown:
//             print('알 수 없는 에러');
//         }
//       }
//   }
// }
