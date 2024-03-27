class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        address = json['address'],
        phone = json['phone'] as String;

  Map<String, dynamic> toJson() => {
    'name': name,
    'address': address,
    'phone': phone,
  };
}

// fromJson 테스트
// 1: Bank 9번째 줄에 type 'Null' is not a subtype of type 'String' in type cast 오류가 발생.
// 2: Evaluate에 json['namê']을 입력하니 null이 뜨는것을 발견.
// 3: json에 들어가는 키값이 이상하다는 것을 발견. namê을 name으로 수정.
// 4: address와 phone도 같은 방법으로 수정.
// 5: fromJson 테스트 통과

// toJson 테스트
// 1: 테스트 코드 21번 째 줄에
// Expected: {'name': '홍길동', 'address': '서울시 어쩌구 저쩌구', 'phone': '010-1111-2222'}
// Actual: {'name': '홍길동', 'αddress': '서울시 어쩌구 저쩌구', 'plone': '010-1111-2222'} 오류 발생.
// 2: 여기도 뭔가 텍스트가 이상한걸로 적혀져있는걸 발견 후 수정.
// 3: toJson 테스트 통과