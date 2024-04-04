import 'package:dart_cli_practice/240402/data_source/member_api.dart';
import 'package:dart_cli_practice/240402/data_source/member_api_impl.dart';
import 'package:dart_cli_practice/240402/model/member.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../mock/mock_file_util.dart';

void main() {
  final mockFileUtil = MockFileUtil('test/240402/resource/member.csv');

  MemberApi api = MemberApiImpl(mockFileUtil);

  setUp(() {
    reset(mockFileUtil);
  });

  group('MemberApi 클래스의', () {
    group('getMembers() 메소드는', () {
      test('readAsLineString() 메소드로 파일을 읽어 List<Member> 를 반환한다.', () async {
        // given
        final brithString = '1997/12/01';
        final expected = [
          Member(
            id: '1',
            name: '홍길동',
            signUpDate: '2024/04/02',
            address: '서울시',
            phone: '010-1234-5678',
            birthDate: brithString,
            age: DateTime.now().year - int.parse(brithString.split('/').first),
          )
        ];

        // when
        when(mockFileUtil.readAsLineString())
            .thenAnswer((_) async => mockMemberStringList);
        final memberList = await api.getMembers();

        // then
        // 메소드가 몇번 호출 되었는지
        // verify(mockFileUtil.readAsLineString()).called(1);
        // readAsLineString() 메소드가 실행 됬을 때
        // 실제로 내가 넘겨준 파라미터가 넘겨졌는지 확인
        // verify(mockFileUtil.readAsLineString()).captured;
        expect(memberList, expected);
      });
    });

    group('postMembers() 메소드는', () {
      test('새로 생성된 Member를 기존 데이터 파일에 추가한다.', () async {
        // given
        final brithString = '1997/12/01';
        final expected = Member(
          id: '1',
          name: '홍길동',
          signUpDate: '2024/04/02',
          address: '서울시',
          phone: '010-1234-5678',
          birthDate: brithString,
          age: DateTime.now().year - int.parse(brithString.split('/').first),
        );

        // when
        when(mockFileUtil.readAsLineString())
            .thenAnswer((_) async => mockBookStringList);
        when(mockFileUtil.write(''));
        await api.postMember(expected);

        // then
        // 메소드가 몇번 호출 되었는지
        verify(mockFileUtil.write('')).called(1);
        // readAsLineString() 메소드가 실행 됬을 때
        // 실제로 내가 넘겨준 파라미터가 넘겨졌는지 확인
        // verify(mockFileUtil.readAsLineString()).captured;
      });
    });
  });
}
