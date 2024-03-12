// import '../orm_240312/slime.dart';
// import '../orm_240312/hero.dart';
//
// class SuperHero extends Hero{
//   SuperHero({required super.name, required super.hp});
//
//   bool _isFlying = false;
//   bool get isFlying => _isFlying;
//
//   set isFlying(bool value){
//     _isFlying = value;
//     if(value){
//       print('$name이 날개를 펼쳤다.');
//     } else{
//       print('$name이 날개를 접엇다.');
//     }
//   }
//
//
//   @override
//   void run(){
//     print('$name이 퇴각했다.');
//   }
//   @override
//   void attack(Slime slime){
//     print('$name이 $slime을 공격했다.');
//     slime.hp -= 10;
//
//     if(isFlying){
//       print('$name이 $slime을 공격했다.');
//       slime.hp -= 5;
//       print('5포인트의 추가 피해를 입혔다.');
//     }
//   }
// }
//
// void main(){
//   final hero = Hero(name: '슈퍼맨');
//   hero.run();
//   final superhero = SuperHero(name: '슈퍼맨', hp: 100);
//   superhero.run();
// }