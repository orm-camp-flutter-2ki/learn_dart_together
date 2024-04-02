
import '../model/member.dart';
import 'library.dart';
import 'library_memento.dart';

class MemberManager {
  List<LibraryMemento> mementos = [];

  void deleteMember(Library library, Member member) {
    mementos.add(LibraryMemento.fromLibrary(library)); // 현재 상태를 메멘토로 저장
    library.members.remove(member);
  }

  // 회원 삭제 실수 방지를 위한 복구 기능
  void undoDelete(Library library) {
    if (mementos.isNotEmpty) {
      LibraryMemento memento = mementos.removeLast(); // 가장 최근의 메멘토 복구
      memento.restore(library);
    }
  }
}
