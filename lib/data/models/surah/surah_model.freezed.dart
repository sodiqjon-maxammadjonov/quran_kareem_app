// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahsListModel _$SurahsListModelFromJson(Map<String, dynamic> json) {
  return _SurahsListModel.fromJson(json);
}

/// @nodoc
mixin _$SurahsListModel {
  List<SurahModel> get surahs => throw _privateConstructorUsedError;

  /// Serializes this SurahsListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahsListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahsListModelCopyWith<SurahsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahsListModelCopyWith<$Res> {
  factory $SurahsListModelCopyWith(
          SurahsListModel value, $Res Function(SurahsListModel) then) =
      _$SurahsListModelCopyWithImpl<$Res, SurahsListModel>;
  @useResult
  $Res call({List<SurahModel> surahs});
}

/// @nodoc
class _$SurahsListModelCopyWithImpl<$Res, $Val extends SurahsListModel>
    implements $SurahsListModelCopyWith<$Res> {
  _$SurahsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahsListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = null,
  }) {
    return _then(_value.copyWith(
      surahs: null == surahs
          ? _value.surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<SurahModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahsListModelImplCopyWith<$Res>
    implements $SurahsListModelCopyWith<$Res> {
  factory _$$SurahsListModelImplCopyWith(_$SurahsListModelImpl value,
          $Res Function(_$SurahsListModelImpl) then) =
      __$$SurahsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SurahModel> surahs});
}

/// @nodoc
class __$$SurahsListModelImplCopyWithImpl<$Res>
    extends _$SurahsListModelCopyWithImpl<$Res, _$SurahsListModelImpl>
    implements _$$SurahsListModelImplCopyWith<$Res> {
  __$$SurahsListModelImplCopyWithImpl(
      _$SurahsListModelImpl _value, $Res Function(_$SurahsListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahsListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = null,
  }) {
    return _then(_$SurahsListModelImpl(
      surahs: null == surahs
          ? _value._surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<SurahModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahsListModelImpl implements _SurahsListModel {
  const _$SurahsListModelImpl({required final List<SurahModel> surahs})
      : _surahs = surahs;

  factory _$SurahsListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahsListModelImplFromJson(json);

  final List<SurahModel> _surahs;
  @override
  List<SurahModel> get surahs {
    if (_surahs is EqualUnmodifiableListView) return _surahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surahs);
  }

  @override
  String toString() {
    return 'SurahsListModel(surahs: $surahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahsListModelImpl &&
            const DeepCollectionEquality().equals(other._surahs, _surahs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_surahs));

  /// Create a copy of SurahsListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahsListModelImplCopyWith<_$SurahsListModelImpl> get copyWith =>
      __$$SurahsListModelImplCopyWithImpl<_$SurahsListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahsListModelImplToJson(
      this,
    );
  }
}

abstract class _SurahsListModel implements SurahsListModel {
  const factory _SurahsListModel({required final List<SurahModel> surahs}) =
      _$SurahsListModelImpl;

  factory _SurahsListModel.fromJson(Map<String, dynamic> json) =
      _$SurahsListModelImpl.fromJson;

  @override
  List<SurahModel> get surahs;

  /// Create a copy of SurahsListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahsListModelImplCopyWith<_$SurahsListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurahModel _$SurahModelFromJson(Map<String, dynamic> json) {
  return _SurahModel.fromJson(json);
}

/// @nodoc
mixin _$SurahModel {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get uzbekName => throw _privateConstructorUsedError;
  int get ayahCount => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
  String get revelationPlace => throw _privateConstructorUsedError;

  /// Serializes this SurahModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahModelCopyWith<SurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahModelCopyWith<$Res> {
  factory $SurahModelCopyWith(
          SurahModel value, $Res Function(SurahModel) then) =
      _$SurahModelCopyWithImpl<$Res, SurahModel>;
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String uzbekName,
      int ayahCount,
      String revelationType,
      String revelationPlace});
}

/// @nodoc
class _$SurahModelCopyWithImpl<$Res, $Val extends SurahModel>
    implements $SurahModelCopyWith<$Res> {
  _$SurahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? uzbekName = null,
    Object? ayahCount = null,
    Object? revelationType = null,
    Object? revelationPlace = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      uzbekName: null == uzbekName
          ? _value.uzbekName
          : uzbekName // ignore: cast_nullable_to_non_nullable
              as String,
      ayahCount: null == ayahCount
          ? _value.ayahCount
          : ayahCount // ignore: cast_nullable_to_non_nullable
              as int,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      revelationPlace: null == revelationPlace
          ? _value.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahModelImplCopyWith<$Res>
    implements $SurahModelCopyWith<$Res> {
  factory _$$SurahModelImplCopyWith(
          _$SurahModelImpl value, $Res Function(_$SurahModelImpl) then) =
      __$$SurahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String uzbekName,
      int ayahCount,
      String revelationType,
      String revelationPlace});
}

/// @nodoc
class __$$SurahModelImplCopyWithImpl<$Res>
    extends _$SurahModelCopyWithImpl<$Res, _$SurahModelImpl>
    implements _$$SurahModelImplCopyWith<$Res> {
  __$$SurahModelImplCopyWithImpl(
      _$SurahModelImpl _value, $Res Function(_$SurahModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? uzbekName = null,
    Object? ayahCount = null,
    Object? revelationType = null,
    Object? revelationPlace = null,
  }) {
    return _then(_$SurahModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      uzbekName: null == uzbekName
          ? _value.uzbekName
          : uzbekName // ignore: cast_nullable_to_non_nullable
              as String,
      ayahCount: null == ayahCount
          ? _value.ayahCount
          : ayahCount // ignore: cast_nullable_to_non_nullable
              as int,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      revelationPlace: null == revelationPlace
          ? _value.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahModelImpl implements _SurahModel {
  const _$SurahModelImpl(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.uzbekName,
      required this.ayahCount,
      required this.revelationType,
      required this.revelationPlace});

  factory _$SurahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahModelImplFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String uzbekName;
  @override
  final int ayahCount;
  @override
  final String revelationType;
  @override
  final String revelationPlace;

  @override
  String toString() {
    return 'SurahModel(number: $number, name: $name, englishName: $englishName, uzbekName: $uzbekName, ayahCount: $ayahCount, revelationType: $revelationType, revelationPlace: $revelationPlace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.uzbekName, uzbekName) ||
                other.uzbekName == uzbekName) &&
            (identical(other.ayahCount, ayahCount) ||
                other.ayahCount == ayahCount) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.revelationPlace, revelationPlace) ||
                other.revelationPlace == revelationPlace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, englishName,
      uzbekName, ayahCount, revelationType, revelationPlace);

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahModelImplCopyWith<_$SurahModelImpl> get copyWith =>
      __$$SurahModelImplCopyWithImpl<_$SurahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahModelImplToJson(
      this,
    );
  }
}

abstract class _SurahModel implements SurahModel {
  const factory _SurahModel(
      {required final int number,
      required final String name,
      required final String englishName,
      required final String uzbekName,
      required final int ayahCount,
      required final String revelationType,
      required final String revelationPlace}) = _$SurahModelImpl;

  factory _SurahModel.fromJson(Map<String, dynamic> json) =
      _$SurahModelImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get uzbekName;
  @override
  int get ayahCount;
  @override
  String get revelationType;
  @override
  String get revelationPlace;

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahModelImplCopyWith<_$SurahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
