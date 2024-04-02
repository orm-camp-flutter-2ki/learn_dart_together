import 'book.dart';
import 'member.dart';

class Rent {
  Book _book;
  Member _member;
  DateTime _rentDate;
  DateTime _dueDate;
  bool _isExtended;

  // Rent 클래스의 생성자
  Rent(this._book, this._member, this._rentDate, {bool isExtended = false})
      : _dueDate = _rentDate.add(Duration(days: 14)), // 기본 대출 기간은 2주
        _isExtended = isExtended;

  // Getter 메서드
  Book get book => _book;
  Member get member => _member;
  DateTime get rentDate => _rentDate;
  DateTime get dueDate => _dueDate;
  bool get isExtended => _isExtended;

  // 대출 기간 연장 메서드
  void extendRent() {
    if (!_isExtended) {
      _dueDate = _dueDate.add(Duration(days: 7)); // 1주일 연장
      _isExtended = true;
    } else {
      print("대출 기간은 한 번만 연장할 수 있습니다.");
    }
  }

  // Rent 객체 정보를 문자열로 반환하는 메서드
  @override
  String toString() {
    return 'Book: ${_book.title}, Member: ${_member.name}, Rent Date: $_rentDate, Due Date: $_dueDate, Is Extended: $_isExtended';
  }
}
