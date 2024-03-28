import 'package:learn_dart_together/240327/data_source/mask_api.dart';
import 'package:learn_dart_together/240327/model/mask.dart';

class MaskRepository {
  final MaskApi _maskApi = MaskApi();

  Future<List<Mask>> getMasks() async {
    try {
      return await _maskApi.getMasks();
    } catch (e) {
      throw Exception('마스크 정보를 가져오는 데 실패했습니다. 에러: $e');
    }
  }
}

void main() async {
  final maskRepository = MaskRepository();

  try {
    final List<Mask> masks = await maskRepository.getMasks();
    print('마스크 정보:');
    masks.forEach((mask) {
      print('Count: ${mask.count}');
      print('Stores:');
      mask.stores.forEach((store) {
        print('Addr: ${store.addr}');
        print('Code: ${store.code}');
        print('Created At: ${store.created_at}');
        print('Lat: ${store.lat}');
        print('Lng: ${store.lng}');
        print('Name: ${store.name}');
        print('Remain Stat: ${store.remain_stat}');
        print('Stock At: ${store.stock_at}');
        print('Type: ${store.type}');
        print('');
      });
    });
  } catch (e) {
    print('에러 발생: $e');
  }
}