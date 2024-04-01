import 'dart:convert';
import 'package:learn_dart_together/24_04_01/dto/photo_response.dart';
import 'package:http/http.dart' as http;
import '../dto/photo_dto.dart';

const slangCensoredMessage = '비속어를 사용할 수 없습니다';
const networkUndefinedErrorMessage = '알 수 없는 네트워크 에러';
const networkErrorCodeMessage = '네트워크 비정상 응답, 코드: ';
const slang = '바보';

abstract interface class PhotoApi {
  final http.Client _client;

  Future<PhotoResult<PhotoDto>> getPhotoDto(String keyword);

  PhotoApi({required client}):
      _client = client;
}

class PhotoApiImpl implements PhotoApi {
  final _baseUri = 'https://pixabay.com/api/?key=43171281-adbb10f971973f0b9e93d4af2';
  String queryUri(String keyword) => '$_baseUri&q=${keyword.replaceAll(' ', '+')}&image_type=photo';

  @override
  final http.Client _client;

  PhotoApiImpl({required client}):
      _client = client;

  @override
  Future<PhotoResult<PhotoDto>> getPhotoDto(String keyword) async {
    late PhotoResult<PhotoDto> result;
    try {
      http.Response response = await _client.get(Uri.parse(queryUri(keyword)));
      if (response.statusCode == 200) {
        result =
            PhotoResult.success(PhotoDto.fromJson(jsonDecode(response.body)));
      } else {
        result = PhotoResult.error(
            networkErrorCodeMessage + response.statusCode.toString());
      }
    } catch (e) {
      result = PhotoResult.error(networkUndefinedErrorMessage);
    }
    return result;
  }
}
