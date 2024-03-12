import 'package:learn_dart_together/24_03_12/airplane.dart';
import 'package:learn_dart_together/24_03_12/car.dart';
import 'package:test/test.dart';

void main() {
  test('탈것의 정보를 출력한다 - super class 메서드 사용',() {
    Car sonata = Car(brand: '현대', model: '소나타', releaseYear: 1995, name: '붕붕이', seatCount: 4, occupied: 0);
    Airplane airplane = Airplane(brand: '대한항공', model: 'Z-199', releaseYear: 2020, departPoint: '서울', destination: '부산');

    sonata.getInformation();
    airplane.getInformation();
  });

  test('4인승 Car는 4명을 초과해서 탑승할 수 없다.',(){
    Car sonata = Car(brand: '현대', model: '소나타', releaseYear: 1995, name: '붕붕이', seatCount: 4, occupied: 0);

    sonata.getInCar(5);
    sonata.getInCar(1);
    sonata.getInCar(2);
    sonata.getInCar(1);
    sonata.getInCar(1);
  });

  test('비행기의 점심메뉴는 밥,라면,떡볶이,비빔밥,빵 중 랜덤으로 하나가 나온다.',() {
    Airplane airplane = Airplane(brand: '대한항공', model: 'Z-199', releaseYear: 2020, departPoint: '서울', destination: '부산');
    List<String> meal = ['밥','라면','떡볶이','비빔밥','빵'];

    print('점심메뉴는 ${airplane.getLunchMenu(meal)} 입니다.');
    print('점심메뉴는 ${airplane.getLunchMenu(meal)} 입니다.');
    print('점심메뉴는 ${airplane.getLunchMenu(meal)} 입니다.');
    print('점심메뉴는 ${airplane.getLunchMenu(meal)} 입니다.');
  });
}