// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditionAyahsModel _$EditionAyahsModelFromJson(Map<String, dynamic> json) {
  return _EditionAyahsModel.fromJson(json);
}

/// @nodoc
mixin _$EditionAyahsModel {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  List<AyahModel> get ayahs => throw _privateConstructorUsedError;

  /// Serializes this EditionAyahsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditionAyahsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditionAyahsModelCopyWith<EditionAyahsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditionAyahsModelCopyWith<$Res> {
  factory $EditionAyahsModelCopyWith(
          EditionAyahsModel value, $Res Function(EditionAyahsModel) then) =
      _$EditionAyahsModelCopyWithImpl<$Res, EditionAyahsModel>;
  @useResult
  $Res call(
      {int number, String name, String englishName, List<AyahModel> ayahs});
}

/// @nodoc
class _$EditionAyahsModelCopyWithImpl<$Res, $Val extends EditionAyahsModel>
    implements $EditionAyahsModelCopyWith<$Res> {
  _$EditionAyahsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditionAyahsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? ayahs = null,
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
      ayahs: null == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<AyahModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditionAyahsModelImplCopyWith<$Res>
    implements $EditionAyahsModelCopyWith<$Res> {
  factory _$$EditionAyahsModelImplCopyWith(_$EditionAyahsModelImpl value,
          $Res Function(_$EditionAyahsModelImpl) then) =
      __$$EditionAyahsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number, String name, String englishName, List<AyahModel> ayahs});
}

/// @nodoc
class __$$EditionAyahsModelImplCopyWithImpl<$Res>
    extends _$EditionAyahsModelCopyWithImpl<$Res, _$EditionAyahsModelImpl>
    implements _$$EditionAyahsModelImplCopyWith<$Res> {
  __$$EditionAyahsModelImplCopyWithImpl(_$EditionAyahsModelImpl _value,
      $Res Function(_$EditionAyahsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditionAyahsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? ayahs = null,
  }) {
    return _then(_$EditionAyahsModelImpl(
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
      ayahs: null == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<AyahModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: false)
class _$EditionAyahsModelImpl implements _EditionAyahsModel {
  const _$EditionAyahsModelImpl(
      {required this.number,
      required this.name,
      required this.englishName,
      required final List<AyahModel> ayahs})
      : _ayahs = ayahs;

  factory _$EditionAyahsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditionAyahsModelImplFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  final List<AyahModel> _ayahs;
  @override
  List<AyahModel> get ayahs {
    if (_ayahs is EqualUnmodifiableListView) return _ayahs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayahs);
  }

  @override
  String toString() {
    return 'EditionAyahsModel(number: $number, name: $name, englishName: $englishName, ayahs: $ayahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditionAyahsModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, englishName,
      const DeepCollectionEquality().hash(_ayahs));

  /// Create a copy of EditionAyahsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditionAyahsModelImplCopyWith<_$EditionAyahsModelImpl> get copyWith =>
      __$$EditionAyahsModelImplCopyWithImpl<_$EditionAyahsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditionAyahsModelImplToJson(
      this,
    );
  }
}

abstract class _EditionAyahsModel implements EditionAyahsModel {
  const factory _EditionAyahsModel(
      {required final int number,
      required final String name,
      required final String englishName,
      required final List<AyahModel> ayahs}) = _$EditionAyahsModelImpl;

  factory _EditionAyahsModel.fromJson(Map<String, dynamic> json) =
      _$EditionAyahsModelImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  List<AyahModel> get ayahs;

  /// Create a copy of EditionAyahsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditionAyahsModelImplCopyWith<_$EditionAyahsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AyahModel _$AyahModelFromJson(Map<String, dynamic> json) {
  return _AyahModel.fromJson(json);
}

/// @nodoc
mixin _$AyahModel {
  int get numberInSurah => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "audio")
  String get audioUrl => throw _privateConstructorUsedError;
  String? get translation => throw _privateConstructorUsedError;

  /// Serializes this AyahModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AyahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyahModelCopyWith<AyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahModelCopyWith<$Res> {
  factory $AyahModelCopyWith(AyahModel value, $Res Function(AyahModel) then) =
      _$AyahModelCopyWithImpl<$Res, AyahModel>;
  @useResult
  $Res call(
      {int numberInSurah,
      String text,
      @JsonKey(name: "audio") String audioUrl,
      String? translation});
}

/// @nodoc
class _$AyahModelCopyWithImpl<$Res, $Val extends AyahModel>
    implements $AyahModelCopyWith<$Res> {
  _$AyahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AyahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberInSurah = null,
    Object? text = null,
    Object? audioUrl = null,
    Object? translation = freezed,
  }) {
    return _then(_value.copyWith(
      numberInSurah: null == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahModelImplCopyWith<$Res>
    implements $AyahModelCopyWith<$Res> {
  factory _$$AyahModelImplCopyWith(
          _$AyahModelImpl value, $Res Function(_$AyahModelImpl) then) =
      __$$AyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberInSurah,
      String text,
      @JsonKey(name: "audio") String audioUrl,
      String? translation});
}

/// @nodoc
class __$$AyahModelImplCopyWithImpl<$Res>
    extends _$AyahModelCopyWithImpl<$Res, _$AyahModelImpl>
    implements _$$AyahModelImplCopyWith<$Res> {
  __$$AyahModelImplCopyWithImpl(
      _$AyahModelImpl _value, $Res Function(_$AyahModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AyahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberInSurah = null,
    Object? text = null,
    Object? audioUrl = null,
    Object? translation = freezed,
  }) {
    return _then(_$AyahModelImpl(
      numberInSurah: null == numberInSurah
          ? _value.numberInSurah
          : numberInSurah // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    disallowUnrecognizedKeys: false, fieldRename: FieldRename.none)
class _$AyahModelImpl implements _AyahModel {
  const _$AyahModelImpl(
      {required this.numberInSurah,
      required this.text,
      @JsonKey(name: "audio") required this.audioUrl,
      this.translation = null});

  factory _$AyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahModelImplFromJson(json);

  @override
  final int numberInSurah;
  @override
  final String text;
  @override
  @JsonKey(name: "audio")
  final String audioUrl;
  @override
  @JsonKey()
  final String? translation;

  @override
  String toString() {
    return 'AyahModel(numberInSurah: $numberInSurah, text: $text, audioUrl: $audioUrl, translation: $translation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahModelImpl &&
            (identical(other.numberInSurah, numberInSurah) ||
                other.numberInSurah == numberInSurah) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numberInSurah, text, audioUrl, translation);

  /// Create a copy of AyahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahModelImplCopyWith<_$AyahModelImpl> get copyWith =>
      __$$AyahModelImplCopyWithImpl<_$AyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahModelImplToJson(
      this,
    );
  }
}

abstract class _AyahModel implements AyahModel {
  const factory _AyahModel(
      {required final int numberInSurah,
      required final String text,
      @JsonKey(name: "audio") required final String audioUrl,
      final String? translation}) = _$AyahModelImpl;

  factory _AyahModel.fromJson(Map<String, dynamic> json) =
      _$AyahModelImpl.fromJson;

  @override
  int get numberInSurah;
  @override
  String get text;
  @override
  @JsonKey(name: "audio")
  String get audioUrl;
  @override
  String? get translation;

  /// Create a copy of AyahModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyahModelImplCopyWith<_$AyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
