import 'package:dart_cli_practice/240402/data_source/member_api.dart';
import 'package:dart_cli_practice/240402/model/member.dart';
import 'package:dart_cli_practice/240402/repository/member_repository.dart';
import 'package:dart_cli_practice/240402/repository/member_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../mock/mockData.dart' as MockData;
import '../mock/mock_member_api_impl.dart';

void main() {
  MemberApi mockMemberApi = MockMemberApi();
  MemberRepository repository = MemberRepositoryImpl(mockMemberApi);

  setUp(() {
    reset(mockMemberApi);
  });

  group('MemberRepository 클래스의', () {
    group('findAll() 메소드는', () {
      test('api.getMembers() 를 호출하여 반환받은 값 List<Member> 를 반환한다.', () async {
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
        when(mockMemberApi.getMembers())
            .thenAnswer((_) async => MockData.mockMemberList);
        final memberList = await repository.findAll();

        // then
        expect(memberList, expected);
      });
    });

    group('findOneById() 메소드는', () {
      test('특정 id를 가진 Member 객체를 반환한다.', () async {
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
        when(mockMemberApi.getMembers())
            .thenAnswer((_) async => MockData.mockMemberList);
        final member = await repository.findOneById('1');

        // then
        expect(member, expected);
      });
    });

    group('save() 메소드는', () {
      test('api.postMember() 롤 호출하여 인자로 받은 Member를 저장한다.', () async {
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
        when(mockMemberApi.postMember(expected));
        await repository.save(expected);

        // then
        verify(mockMemberApi.postMember(expected)).captured;
      });
    });
  });
}
