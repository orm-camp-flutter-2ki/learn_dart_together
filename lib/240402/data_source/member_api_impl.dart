import 'package:dart_cli_practice/240402/common/file_util.dart';
import 'package:dart_cli_practice/240402/data_source/member_api.dart';
import 'package:dart_cli_practice/240402/model/member.dart';

final memberCsvColumn = 'id,name,signUpDate,address,phone,birthDate\n';

class MemberApiImpl implements MemberApi {
  final FileUtil _fileUtil;

  MemberApiImpl(this._fileUtil);

  // member.csv (String) -> List<Member>
  @override
  Future<List<Member>> getMembers() async {
    final memberStringList = await _fileUtil.readAsLineString();

    memberStringList.removeAt(0);

    return memberStringList.map(_stringToMember).toList();
  }

  // List<Member> -> member.csv (String)
  @override
  Future<void> postMember(Member member) async {
    final memberList = await getMembers();
    memberList.add(member);

    StringBuffer buffer = StringBuffer()..write(memberCsvColumn);

    for (final member in memberList) {
      buffer.write(_memberToString(member));
    }

    _fileUtil.write(buffer.toString());
  }

  Member _stringToMember(String memberString) {
    final [id, name, signUpDate, address, phone, birthDate] =
        memberString.split(',');
    return Member(
        id: id,
        name: name,
        signUpDate: signUpDate,
        address: address,
        phone: phone,
        birthDate: birthDate,
        age: DateTime.now().year - int.parse(birthDate.split('/').first));
  }

  String _memberToString(Member member) {
    final memberString =
        '${member.id},${member.name},${member.signUpDate},${member.address},${member.phone},${member.birthDate}\n';

    return memberString;
  }
}
