# 연습문제 1

1. Bank 코드를 복사하여 직렬화, 역직렬화를 테스트하는 코드를 작성하고
2. 디버깅하여 오류를 찾아내고 수정하고
3. 디버깅 과정을 정리하시오

주어진 Bank class 코드와 json 데이터는 다음과 같다.

```dart
class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['namê'] as String,
        address = json['addrêss'],
        phone = json['ph0ne'] as String;

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'αddress': address,
        'plone': phone,
      };
}
```

```text
{
"name": "홍길동",
"address": "서울시 어쩌구 저쩌구",
"phone": "010-1111-2222",
}
```

아래와 같은 데이터를 테스트 비교용으로 미리 선언했다.

```dart
final expectedJson = {
  "name": "홍길동",
  "address": "서울시 어쩌구 저쩌구",
  "phone": "010-1111-2222"
};
final expectedBank = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');
```

먼저, fromJson 생성자를 통해 역직렬화를 테스트했다.

```dart
test('fromJson 생성자로 역직렬화를 한다.', () {
  final actualBank = Bank.fromJson(jsonDecode(expectedJsonString));

  expect(actualBank, equals(expectedBank));
});
```

아래와 같은 에러가 발생했다.

```text
type 'Null' is not a subtype of type 'String' in type cast

package:dart_cli_practice/240327/model/bank.dart 15:29  new Bank.fromJson
test\240327\bank_test.dart 14:31                        main.<fn>.<fn>
```

`null` 타입은 `String` 타입으로 타입 캐스팅이 안된다는 뜻이다.

스택 트레이스 해보니 아래 코드로 이동했다

```dart
Bank.fromJson(Map<String, dynamic> json)
    : name = json['namê'] as String,
    address = json['addrêss'],
    phone = json['ph0ne'] as String;
```

인자로 넘겨준 `json` 데이터에서 `json['namê']` 로 값을 가져오고 있다.  
당연히 `namê` 이라는 key 는 존재하지 않기 때문에 value 값은 `null` 이고 `as String` 타입 캐스팅을 하다가 에러가 발생 한 것이다.

다른 key 값들도 동일하게 존재하지 않는 key 를 참조하고 있어서 에러가 발생한다.

아래와 같이 수정해 주었다.

```dart
Bank.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String,
    address = json['address'],
    phone = json['phone'] as String;
```

다시 테스트를 시도하자 아래와 같이 테스트에 실패했다.

같은 `<Instance of 'Bank'>` 이지만 `equals` 테스트를 통과하지 못한 것이다.

```text
Expected: <Instance of 'Bank'>
  Actual: <Instance of 'Bank'>

package:matcher                  expect
test\240327\bank_test.dart 16:7  main.<fn>.<fn>
```

line:16 에 breakpoint 를 찍고 디버깅을 해보았다.

두 Bank 인스턴스가 동일하지 않다고 나오기 떄문에  
`expectedBank` 와 `actualBank` 의 hashCode 를 각각 찍어 보았다.

```text
actualBank.hashCode = 2539648469
expectedBank.hashCode = 3448378669
```

hashCode 가 다르다고 나온다. Bank 클래스에서 hashCode 와 operator == 를 재정의 해줘야 동일한 값을 가질때 동일한 hashCode 가 나올 것이다.

Bank 데이터 클래스에 == 과 hashCode 를 재정의 해주었다.

```dart
@override                                                              
bool operator ==(Object other) =>                                      
    identical(this, other) ||                                          
    other is Bank &&                                                   
        runtimeType == other.runtimeType &&                            
        name == other.name &&                                          
        address == other.address &&                                    
        phone == other.phone;                                          
                                                                        
@override                                                              
int get hashCode => name.hashCode ^ address.hashCode ^ phone.hashCode; 
```

다음으로 toJson 메소드를 사용하여 직렬화 테스트를 시도했다.

다음과 같은 테스트 실패 케이스가 방생했다.

```text
package:matcher                  expect
test\240327\bank_test.dart 23:7  main.<fn>.<fn>

Expected: {'name': '홍길동', 'address': '서울시 어쩌구 저쩌구', 'phone': '010-1111-2222'}
  Actual: {'name': '홍길동', 'αddress': '서울시 어쩌구 저쩌구', 'plone': '010-1111-2222'}
   Which: is missing map key 'address'
```

`map` 객체를 비교하는데 address 하는 키가 없다고 한다.

해당하는 Bank 데이터 클래스에 가보면 다음과 같이 코드가 작성되어있다.

```dart
Map<String, dynamic> toJson() => {
      'name': name,
      'αddress': address,
      'plone': phone,
    };
```

인스턴스를 직렬화 하는 코드에서 `αddress` 라는 key 로 map 객체를 생성하고 있었다. / `αddress` → `address`

또 자세히 보면 `plone` 이라는 key 값으로 map 객체를 생성하고 있었다. / `plone` → `phone`

~~누가 짠 코드인지 상당히 이상한 문자들을 많이 집어넣었다. 아마 그리스인인가 보다.~~

아래와 같이 수정해 주었다.

```dart
Map<String, dynamic> toJson() => {
      'name': name,
      'address': address,
      'phone': phone,
    };
```

발견한 에러, 오타는

- `fromJson` 의 잘못된 key 이름으로 json[] 을 참조
- `toJson` 의 잘못된 key 이름으로 map 객체 생성
- == operator, hashCode 를 재정의 안한 경우
