// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodeList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeList _$EpisodeListFromJson(Map<String, dynamic> json) {
  return _EpisodeList.fromJson(json);
}

/// @nodoc
mixin _$EpisodeList {
  List<Episode> get episodeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeListCopyWith<EpisodeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeListCopyWith<$Res> {
  factory $EpisodeListCopyWith(
          EpisodeList value, $Res Function(EpisodeList) then) =
      _$EpisodeListCopyWithImpl<$Res, EpisodeList>;
  @useResult
  $Res call({List<Episode> episodeList});
}

/// @nodoc
class _$EpisodeListCopyWithImpl<$Res, $Val extends EpisodeList>
    implements $EpisodeListCopyWith<$Res> {
  _$EpisodeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeList = null,
  }) {
    return _then(_value.copyWith(
      episodeList: null == episodeList
          ? _value.episodeList
          : episodeList // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EpisodeListCopyWith<$Res>
    implements $EpisodeListCopyWith<$Res> {
  factory _$$_EpisodeListCopyWith(
          _$_EpisodeList value, $Res Function(_$_EpisodeList) then) =
      __$$_EpisodeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Episode> episodeList});
}

/// @nodoc
class __$$_EpisodeListCopyWithImpl<$Res>
    extends _$EpisodeListCopyWithImpl<$Res, _$_EpisodeList>
    implements _$$_EpisodeListCopyWith<$Res> {
  __$$_EpisodeListCopyWithImpl(
      _$_EpisodeList _value, $Res Function(_$_EpisodeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeList = null,
  }) {
    return _then(_$_EpisodeList(
      episodeList: null == episodeList
          ? _value._episodeList
          : episodeList // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeList implements _EpisodeList {
  const _$_EpisodeList({required final List<Episode> episodeList})
      : _episodeList = episodeList;

  factory _$_EpisodeList.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeListFromJson(json);

  final List<Episode> _episodeList;
  @override
  List<Episode> get episodeList {
    if (_episodeList is EqualUnmodifiableListView) return _episodeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodeList);
  }

  @override
  String toString() {
    return 'EpisodeList(episodeList: $episodeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodeList &&
            const DeepCollectionEquality()
                .equals(other._episodeList, _episodeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_episodeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodeListCopyWith<_$_EpisodeList> get copyWith =>
      __$$_EpisodeListCopyWithImpl<_$_EpisodeList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeListToJson(
      this,
    );
  }
}

abstract class _EpisodeList implements EpisodeList {
  const factory _EpisodeList({required final List<Episode> episodeList}) =
      _$_EpisodeList;

  factory _EpisodeList.fromJson(Map<String, dynamic> json) =
      _$_EpisodeList.fromJson;

  @override
  List<Episode> get episodeList;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeListCopyWith<_$_EpisodeList> get copyWith =>
      throw _privateConstructorUsedError;
}
