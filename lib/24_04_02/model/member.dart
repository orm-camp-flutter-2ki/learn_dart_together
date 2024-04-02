class Member {
  String _name;
  String _contactNumber;
  String _email;
  int _memberId;

  // Member 클래스의 생성자
  Member(this._name, this._contactNumber, this._email, this._memberId);

  // Getter 메서드
  String get name => _name;
  String get contactNumber => _contactNumber;
  String get email => _email;
  int get memberId => _memberId;

  // Setter 메서드
  set name(String newName) {
    _name = newName;
  }

  set contactNumber(String newContactNumber) {
    _contactNumber = newContactNumber;
  }

  set email(String newEmail) {
    _email = newEmail;
  }

  set memberId(int newMemberId) {
    _memberId = newMemberId;
  }

  // 회원 정보를 문자열로 반환하는 메서드
  @override
  String toString() {
    return 'Name: $_name, Contact Number: $_contactNumber, Email: $_email, Member ID: $_memberId';
  }
}
