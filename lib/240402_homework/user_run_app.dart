import 'dart:io';

import 'package:learn_dart_together/240402_homework/model/user.dart';
import 'package:learn_dart_together/240402_homework/repository/user_repository.dart';

class UserRunApp {
  Future<void> userRunApp(UserRepository userRepository) async {
    bool running = true;

    while (running) {
      printMainMenu();

      String userInput = stdin.readLineSync()!.trim();

      switch (userInput) {
        case '1':
          print('회원 명단');
          getUsers(userRepository);
          running = false;
          break;
        case '2':
          print('회원 등록');
          userInputfn(userRepository);
          await userRepository.saveUser();
          running = false;
          break;
        case '3':
          print('회원 삭제');
          deleteInputfn(userRepository);
          running = false;
          break;
        case '4':
          print('회원 삭제 취소');
          delcanInput(userRepository);
          running = false;
          break;
        case '5':
          print('뒤로가기');
          running = false;
          break;
        case 'exit':
          running = false;
          break;
        default:
          print('올바른 옵션을 선택하세요.');
          break;
      }
    }

    print('프로그램을 종료합니다.');
  }

  void printMainMenu() {
    print('======== 회원 관리 프로그램 ========');
    print('1. 회원 조회');
    print('2. 회원 등록');
    print('3. 회원 삭제');
    print('4. 삭제 취소');
    print('5. 뒤로 가기');
    print('====================================');
    print('원하는 작업의 번호를 입력하세요.');
  }

  void userInputfn(UserRepository userRepository) {
    print('이름을 입력하세요.');
    String? name = stdin.readLineSync();
    while (name == null || name == '') {
      print('다시 입력 하세요 빈 문자로 입력하셨습니다');
      name = stdin.readLineSync();
    }
    print('주소를 입력하세요.');
    String? address = stdin.readLineSync();
    while (address == null || address == '') {
      print('다시 입력 하세요 빈 문자로 입력하셨습니다');
      address = stdin.readLineSync();
    }
    print('생일을 입력하세요. 예시)20010101');
    String? birth = stdin.readLineSync();
    while (birth == null ||
        birth == '' ||
        birth.length != 8 ||
        !validateNumber(birth)) {
      print('다시 입력 하세요. 생일을 잘못 입력하셨습니다. ');
      birth = stdin.readLineSync();
    }
    int idnum = userRepository.getiIdInt();
    String year = birth.substring(0, 4);
    String month = birth.substring(4, 6);
    String day = birth.substring(6, 8);
    User user = User(
        id: idnum,
        name: name,
        address: address,
        birth: DateTime(
            int.parse(year), int.parse(month), int.parse(day), 0, 0, 0),
        isMember: true,
        createdAt: DateTime.now(),
        loanBooks: []);
    userRepository.createUser(user);
  }

  void deleteInputfn(UserRepository userRepository) {
    print('삭제할 회원 ID를  입력하세요');
    String? delId = stdin.readLineSync();
    userRepository.delUser(int.parse(delId!));
    //삭제로직
  }

  void delcanInput(UserRepository userRepository) {
    print('삭제 취소할 회원 ID를  입력하세요');
    String? delId = stdin.readLineSync();
    userRepository.delcanUser(int.parse(delId!));
  }

  void getUsers(UserRepository userRepository) {
    List userList = userRepository.getUsers();
    userList.forEach((element) => print(element));
  }

  bool validateNumber(String value) {
    // String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(r'^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$');
    if (value.length == 0) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return false;
    }
    return true;
  }
}
