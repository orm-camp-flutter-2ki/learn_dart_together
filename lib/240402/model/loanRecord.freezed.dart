// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loanRecord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanRecord _$LoanRecordFromJson(Map<String, dynamic> json) {
  return _LoanRecord.fromJson(json);
}

/// @nodoc
mixin _$LoanRecord {
  String get bookName => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  DateTime get rentDate => throw _privateConstructorUsedError;
  DateTime get rentBackDate => throw _privateConstructorUsedError;
  num get extendReturnDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanRecordCopyWith<LoanRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanRecordCopyWith<$Res> {
  factory $LoanRecordCopyWith(
          LoanRecord value, $Res Function(LoanRecord) then) =
      _$LoanRecordCopyWithImpl<$Res, LoanRecord>;
  @useResult
  $Res call(
      {String bookName,
      String userName,
      DateTime rentDate,
      DateTime rentBackDate,
      num extendReturnDate});
}

/// @nodoc
class _$LoanRecordCopyWithImpl<$Res, $Val extends LoanRecord>
    implements $LoanRecordCopyWith<$Res> {
  _$LoanRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookName = null,
    Object? userName = null,
    Object? rentDate = null,
    Object? rentBackDate = null,
    Object? extendReturnDate = null,
  }) {
    return _then(_value.copyWith(
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rentDate: null == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentBackDate: null == rentBackDate
          ? _value.rentBackDate
          : rentBackDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      extendReturnDate: null == extendReturnDate
          ? _value.extendReturnDate
          : extendReturnDate // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanRecordImplCopyWith<$Res>
    implements $LoanRecordCopyWith<$Res> {
  factory _$$LoanRecordImplCopyWith(
          _$LoanRecordImpl value, $Res Function(_$LoanRecordImpl) then) =
      __$$LoanRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookName,
      String userName,
      DateTime rentDate,
      DateTime rentBackDate,
      num extendReturnDate});
}

/// @nodoc
class __$$LoanRecordImplCopyWithImpl<$Res>
    extends _$LoanRecordCopyWithImpl<$Res, _$LoanRecordImpl>
    implements _$$LoanRecordImplCopyWith<$Res> {
  __$$LoanRecordImplCopyWithImpl(
      _$LoanRecordImpl _value, $Res Function(_$LoanRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookName = null,
    Object? userName = null,
    Object? rentDate = null,
    Object? rentBackDate = null,
    Object? extendReturnDate = null,
  }) {
    return _then(_$LoanRecordImpl(
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rentDate: null == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentBackDate: null == rentBackDate
          ? _value.rentBackDate
          : rentBackDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      extendReturnDate: null == extendReturnDate
          ? _value.extendReturnDate
          : extendReturnDate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanRecordImpl implements _LoanRecord {
  const _$LoanRecordImpl(
      {required this.bookName,
      required this.userName,
      required this.rentDate,
      required this.rentBackDate,
      required this.extendReturnDate});

  factory _$LoanRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanRecordImplFromJson(json);

  @override
  final String bookName;
  @override
  final String userName;
  @override
  final DateTime rentDate;
  @override
  final DateTime rentBackDate;
  @override
  final num extendReturnDate;

  @override
  String toString() {
    return 'LoanRecord(bookName: $bookName, userName: $userName, rentDate: $rentDate, rentBackDate: $rentBackDate, extendReturnDate: $extendReturnDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanRecordImpl &&
            (identical(other.bookName, bookName) ||
                other.bookName == bookName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rentDate, rentDate) ||
                other.rentDate == rentDate) &&
            (identical(other.rentBackDate, rentBackDate) ||
                other.rentBackDate == rentBackDate) &&
            (identical(other.extendReturnDate, extendReturnDate) ||
                other.extendReturnDate == extendReturnDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bookName, userName, rentDate,
      rentBackDate, extendReturnDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanRecordImplCopyWith<_$LoanRecordImpl> get copyWith =>
      __$$LoanRecordImplCopyWithImpl<_$LoanRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanRecordImplToJson(
      this,
    );
  }
}

abstract class _LoanRecord implements LoanRecord {
  const factory _LoanRecord(
      {required final String bookName,
      required final String userName,
      required final DateTime rentDate,
      required final DateTime rentBackDate,
      required final num extendReturnDate}) = _$LoanRecordImpl;

  factory _LoanRecord.fromJson(Map<String, dynamic> json) =
      _$LoanRecordImpl.fromJson;

  @override
  String get bookName;
  @override
  String get userName;
  @override
  DateTime get rentDate;
  @override
  DateTime get rentBackDate;
  @override
  num get extendReturnDate;
  @override
  @JsonKey(ignore: true)
  _$$LoanRecordImplCopyWith<_$LoanRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
