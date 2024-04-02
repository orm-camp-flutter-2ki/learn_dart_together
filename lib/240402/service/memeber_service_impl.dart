import 'package:dart_cli_practice/240402/model/member.dart';
import 'package:dart_cli_practice/240402/repository/member_repository.dart';
import 'package:dart_cli_practice/240402/service/member_service.dart';

class MemberServiceImpl implements MemberService {
  final MemberRepository _memberRepository;

  MemberServiceImpl(this._memberRepository);

  @override
  Future<Member> getMember(String id) async {
    return await _memberRepository.findOneById(id);
  }

  @override
  Future<List<Member>> getMembers() async {
    return await _memberRepository.findAll();
  }

  @override
  Future<void> signUp(Member member) async {
    if (await _memberRepository.existUser(member.name, member.phone)) {
      throw Exception('이미 가입한 회원입니다.');
    }

    await _memberRepository.save(member);
  }
}
