import 'package:learn_dart_together/24_04_01/common/CustomException/exception_message.dart';
import 'package:learn_dart_together/24_04_01/common/CustomException/slang_exception.dart';
import 'package:learn_dart_together/24_04_01/common/result.dart';
import 'package:learn_dart_together/24_04_01/dto/photo_response_dto.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';

final mockResultException = Result.error(
  SlangException(ExceptionMessage.slangError.message),
);

final mockPhotoData = [
  Photo(tags: ['노랑', '하늘'], imageUrl: 'https://test.com')
];

final mockResultSuccess = Result.success(mockPhotoData);

final mockHits = [
  Hit(
    id: 1,
    pageURL: 'https://test.com',
    type: 'photo',
    tags: '노랑, 하늘',
    previewURL: 'https://test.com',
    previewWidth: 100,
    previewHeight: 100,
    webformatURL: 'https://test.com',
    webformatWidth: 100,
    webformatHeight: 100,
    largeImageURL: 'https://test.com',
    imageWidth: 100,
    imageHeight: 100,
    imageSize: 100,
    views: 100,
    downloads: 100,
    collections: 100,
    likes: 100,
    comments: 100,
    userId: 1,
    user: 'test',
    userImageURL: 'https://test.com',
  )
];

final mockPhotoResponseDto =
    PhotoResponseDto(hits: mockHits, total: 1, totalHit: 1);
