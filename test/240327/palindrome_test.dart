// 회문(回文) 또는 팰린드롬(palindrome)은 거꾸로 읽어도 제대로 읽는 것과 같은 문장이나 낱말, 숫자, 문자열(sequence of characters) 등이다.
// 보통 낱말 사이에 있는 띄어쓰기나 문장 부호는 무시한다.

import 'package:test/test.dart';

bool palindrome(String text) {
  // 특수문자 제거
  RegExp regExp = RegExp(r'[^ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z\d\\t\\r\\n][\\\^]?');

  final filteredText = text.replaceAll(regExp, '').toLowerCase();

  if (filteredText.isEmpty) {
    throw Exception('회문이 아닙니다.');
  }

  final reversedText = filteredText.split('').reversed.toList().join();

  return filteredText == reversedText;
}

void main() {
  group('회문(palindrome)은', () {
    group('거꾸로 읽어도 동일한 문장이다.', () {
      test('"racecar" 는 회문이다.', () {
        expect(palindrome('racecar'), true);
      });

      test('"hello" 는 회문이 아니다.', () {
        expect(palindrome('hello'), false);
      });
    });

    group('띄어쓰기, 문장부호를 무시한다.', () {
      test('"다시 합창합시다" 는 회문이다.', () {
        expect(palindrome('다시 합창합시다'), true);
      });

      test('"Was it a cat I saw?" 는 회문이다.', () {
        expect(palindrome('Was it a cat I saw?'), true);
      });

      test('회문 소설 《개가 에이다를 보다》(Dog Sees Ada)" 는 회문이다.', () {
        expect(palindrome('''
Dog Sees Ada

Adam? I'm Adam! Moody, me? Dam it (sic)! Are we all? I know Ada. I saw Ada.

Ah, a short symbol to no denial: Eyes omit naive dog-desserts. Evil right, old-name diets. A tree-bonnet foliate, relax: If Ada did pull order, read. Ada had a foe, fire-rose facade tool, too-hot yard Iraq: arid Elijah at a haj. I lead a reviled noose, Canadian!

It is coded, on a pistol by Rome, "Man is an ardor pelt, tactiler, sad." A tacit sin, a rude Roman enema. I ran; Agnus Dei, Dada lived on. I, a gap, a zero monad, Ada's nose: "Rift on, evil royal pilots!" I pass a nasal acolyte. I pondered, now idle.

His flack: late no-nos, tits, a cow. Two-cow, to tenor of God! A sin is a sign, ignoble udder-cases! La femme fatale gnawed at a phone-post, also lost call, eh? She'll act solo, slats open. Oh, pat a dew-angel at a femme false. Sacred duel, bonging is a sin; is a dog? For one to two-cow two, cast it so none talk calfs!

I held, I wondered. No piety local as an ass. A pistol (I play, or live not) fires on sad Ada. "No more!" Zap! Again. O devil! Ada died, sung an aria. Men, enamored, uranistic at Ada's relit cattle prod, ran as in a memory blot.

Sip an ode, Doc; sit in. Aid an ace, soon deliver Ada! Elijah!

At a haj, I led Iraq (arid ray to hoot), looted a cafe sore, rife of Ada. Had Ada erred? Roll up. Did Ada fix ale, retail? Often. "No beer taste," I demand, "loth girl! I've stressed! Go, deviant!"

"I mosey!"
"Elaine, Do not lob my Stroh's!"
Aha! Ada was I; Ada won. Kill a ewe, racist.
I made my doom: "Madam, I'm ADA!"
Ada sees God.
'''), true);
      });
    });
  });
}
