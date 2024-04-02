import 'package:dart_cli_practice/240402/common/file_util.dart';
import 'package:mockito/mockito.dart';

final mockMemberString = '''
id,name,signUpDate,address,phone,birthDate
1,홍길동,2024/04/02,서울시,010-1234-5678,1997/12/01
''';

final mockMemberStringList = [
  'id,name,signUpDate,address,phone,birthDate',
  '1,홍길동,2024/04/02,서울시,010-1234-5678,1997/12/01'
];

final mockBookString = '''
id,name,isbn,publicationDate
1,전자사전,151195264-4,2024/04/02
''';

final mockBookStringList = [
  'id,name,isbn,publicationDate',
  '1,전자사전,151195264-4,2024/04/02'
];

final mockLoanRecordString = '''
id,userId,bookId,loanDate,extendedReturnDate,returnDate,isExtended,isReturned
1,1,1,2024/04/02,2024/04/02,2024/04/16,false,false
''';

final mockLoanRecordStringList = [
  'id,userId,bookId,loanDate,extendedReturnDate,returnDate,isExtended,isReturned',
  '1,1,1,2024/04/02,2024/04/02,2024/04/16,false,false'
];

class MockFileUtil extends Mock implements FileUtil {
  final String _path;

  MockFileUtil(this._path);

  // reflection, 원본 데이터와 똑같은 데이터를 가지고 있다.
  // method 를 capture 한다.
  @override
  Future<String> readAsString() async => super.noSuchMethod(
        Invocation.getter(#readAsString),
        returnValue: mockMemberString,
      );

  @override
  Future<List<String>> readAsLineString() async => super.noSuchMethod(
        Invocation.getter(#readAsLineString),
        returnValue: mockMemberStringList,
      );

  @override
  Future<void> write(String? contents) async =>
      super.noSuchMethod(Invocation.method(#write, [contents]));
}
