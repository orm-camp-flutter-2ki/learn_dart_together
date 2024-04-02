// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;

  num get id => throw _privateConstructorUsedError;

  String get phoneNum => throw _privateConstructorUsedError;

  DateTime get birthDate => throw _privateConstructorUsedError;

  DateTime get joinDate => throw _privateConstructorUsedError;

  String get address => throw _privateConstructorUsedError;

  List<Book> get rentList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;

  @useResult
  $Res call(
      {String name,
      num id,
      String phoneNum,
      DateTime birthDate,
      DateTime joinDate,
      String address,
      List<Book> rentList});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? phoneNum = null,
    Object? birthDate = null,
    Object? joinDate = null,
    Object? address = null,
    Object? rentList = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      phoneNum: null == phoneNum
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      joinDate: null == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rentList: null == rentList
          ? _value.rentList
          : rentList // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String name,
      num id,
      String phoneNum,
      DateTime birthDate,
      DateTime joinDate,
      String address,
      List<Book> rentList});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? phoneNum = null,
    Object? birthDate = null,
    Object? joinDate = null,
    Object? address = null,
    Object? rentList = null,
  }) {
    return _then(_$UserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      phoneNum: null == phoneNum
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      joinDate: null == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rentList: null == rentList
          ? _value._rentList
          : rentList // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.name,
      required this.id,
      required this.phoneNum,
      required this.birthDate,
      required this.joinDate,
      required this.address,
      required final List<Book> rentList})
      : _rentList = rentList;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String name;
  @override
  final num id;
  @override
  final String phoneNum;
  @override
  final DateTime birthDate;
  @override
  final DateTime joinDate;
  @override
  final String address;
  final List<Book> _rentList;

  @override
  List<Book> get rentList {
    if (_rentList is EqualUnmodifiableListView) return _rentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentList);
  }

  @override
  String toString() {
    return 'User(name: $name, id: $id, phoneNum: $phoneNum, birthDate: $birthDate, joinDate: $joinDate, address: $address, rentList: $rentList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNum, phoneNum) ||
                other.phoneNum == phoneNum) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._rentList, _rentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, phoneNum, birthDate,
      joinDate, address, const DeepCollectionEquality().hash(_rentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String name,
      required final num id,
      required final String phoneNum,
      required final DateTime birthDate,
      required final DateTime joinDate,
      required final String address,
      required final List<Book> rentList}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get name;

  @override
  num get id;

  @override
  String get phoneNum;

  @override
  DateTime get birthDate;

  @override
  DateTime get joinDate;

  @override
  String get address;

  @override
  List<Book> get rentList;

  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
