// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodeList_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpisodeListEvent {
  List<int> get episodeList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> episodeList) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> episodeList)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> episodeList)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeListEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeListEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeListEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeListEventCopyWith<EpisodeListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeListEventCopyWith<$Res> {
  factory $EpisodeListEventCopyWith(
          EpisodeListEvent value, $Res Function(EpisodeListEvent) then) =
      _$EpisodeListEventCopyWithImpl<$Res, EpisodeListEvent>;
  @useResult
  $Res call({List<int> episodeList});
}

/// @nodoc
class _$EpisodeListEventCopyWithImpl<$Res, $Val extends EpisodeListEvent>
    implements $EpisodeListEventCopyWith<$Res> {
  _$EpisodeListEventCopyWithImpl(this._value, this._then);

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
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeListEventFetchCopyWith<$Res>
    implements $EpisodeListEventCopyWith<$Res> {
  factory _$$EpisodeListEventFetchCopyWith(_$EpisodeListEventFetch value,
          $Res Function(_$EpisodeListEventFetch) then) =
      __$$EpisodeListEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> episodeList});
}

/// @nodoc
class __$$EpisodeListEventFetchCopyWithImpl<$Res>
    extends _$EpisodeListEventCopyWithImpl<$Res, _$EpisodeListEventFetch>
    implements _$$EpisodeListEventFetchCopyWith<$Res> {
  __$$EpisodeListEventFetchCopyWithImpl(_$EpisodeListEventFetch _value,
      $Res Function(_$EpisodeListEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeList = null,
  }) {
    return _then(_$EpisodeListEventFetch(
      episodeList: null == episodeList
          ? _value._episodeList
          : episodeList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$EpisodeListEventFetch implements EpisodeListEventFetch {
  const _$EpisodeListEventFetch({required final List<int> episodeList})
      : _episodeList = episodeList;

  final List<int> _episodeList;
  @override
  List<int> get episodeList {
    if (_episodeList is EqualUnmodifiableListView) return _episodeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodeList);
  }

  @override
  String toString() {
    return 'EpisodeListEvent.fetch(episodeList: $episodeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeListEventFetch &&
            const DeepCollectionEquality()
                .equals(other._episodeList, _episodeList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_episodeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeListEventFetchCopyWith<_$EpisodeListEventFetch> get copyWith =>
      __$$EpisodeListEventFetchCopyWithImpl<_$EpisodeListEventFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> episodeList) fetch,
  }) {
    return fetch(episodeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> episodeList)? fetch,
  }) {
    return fetch?.call(episodeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> episodeList)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(episodeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeListEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeListEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeListEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class EpisodeListEventFetch implements EpisodeListEvent {
  const factory EpisodeListEventFetch({required final List<int> episodeList}) =
      _$EpisodeListEventFetch;

  @override
  List<int> get episodeList;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeListEventFetchCopyWith<_$EpisodeListEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpisodeListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodeList episodeListLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EpisodeList episodeListLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodeList episodeListLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeListStateLoading value) loading,
    required TResult Function(EpisodeListStateLoaded value) loaded,
    required TResult Function(EpisodeListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeListStateLoading value)? loading,
    TResult? Function(EpisodeListStateLoaded value)? loaded,
    TResult? Function(EpisodeListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeListStateLoading value)? loading,
    TResult Function(EpisodeListStateLoaded value)? loaded,
    TResult Function(EpisodeListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeListStateCopyWith<$Res> {
  factory $EpisodeListStateCopyWith(
          EpisodeListState value, $Res Function(EpisodeListState) then) =
      _$EpisodeListStateCopyWithImpl<$Res, EpisodeListState>;
}

/// @nodoc
class _$EpisodeListStateCopyWithImpl<$Res, $Val extends EpisodeListState>
    implements $EpisodeListStateCopyWith<$Res> {
  _$EpisodeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EpisodeListStateLoadingCopyWith<$Res> {
  factory _$$EpisodeListStateLoadingCopyWith(_$EpisodeListStateLoading value,
          $Res Function(_$EpisodeListStateLoading) then) =
      __$$EpisodeListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeListStateLoadingCopyWithImpl<$Res>
    extends _$EpisodeListStateCopyWithImpl<$Res, _$EpisodeListStateLoading>
    implements _$$EpisodeListStateLoadingCopyWith<$Res> {
  __$$EpisodeListStateLoadingCopyWithImpl(_$EpisodeListStateLoading _value,
      $Res Function(_$EpisodeListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeListStateLoading implements EpisodeListStateLoading {
  const _$EpisodeListStateLoading();

  @override
  String toString() {
    return 'EpisodeListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodeList episodeListLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EpisodeList episodeListLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodeList episodeListLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeListStateLoading value) loading,
    required TResult Function(EpisodeListStateLoaded value) loaded,
    required TResult Function(EpisodeListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeListStateLoading value)? loading,
    TResult? Function(EpisodeListStateLoaded value)? loaded,
    TResult? Function(EpisodeListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeListStateLoading value)? loading,
    TResult Function(EpisodeListStateLoaded value)? loaded,
    TResult Function(EpisodeListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodeListStateLoading implements EpisodeListState {
  const factory EpisodeListStateLoading() = _$EpisodeListStateLoading;
}

/// @nodoc
abstract class _$$EpisodeListStateLoadedCopyWith<$Res> {
  factory _$$EpisodeListStateLoadedCopyWith(_$EpisodeListStateLoaded value,
          $Res Function(_$EpisodeListStateLoaded) then) =
      __$$EpisodeListStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({EpisodeList episodeListLoaded});

  $EpisodeListCopyWith<$Res> get episodeListLoaded;
}

/// @nodoc
class __$$EpisodeListStateLoadedCopyWithImpl<$Res>
    extends _$EpisodeListStateCopyWithImpl<$Res, _$EpisodeListStateLoaded>
    implements _$$EpisodeListStateLoadedCopyWith<$Res> {
  __$$EpisodeListStateLoadedCopyWithImpl(_$EpisodeListStateLoaded _value,
      $Res Function(_$EpisodeListStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeListLoaded = null,
  }) {
    return _then(_$EpisodeListStateLoaded(
      episodeListLoaded: null == episodeListLoaded
          ? _value.episodeListLoaded
          : episodeListLoaded // ignore: cast_nullable_to_non_nullable
              as EpisodeList,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeListCopyWith<$Res> get episodeListLoaded {
    return $EpisodeListCopyWith<$Res>(_value.episodeListLoaded, (value) {
      return _then(_value.copyWith(episodeListLoaded: value));
    });
  }
}

/// @nodoc

class _$EpisodeListStateLoaded implements EpisodeListStateLoaded {
  const _$EpisodeListStateLoaded({required this.episodeListLoaded});

  @override
  final EpisodeList episodeListLoaded;

  @override
  String toString() {
    return 'EpisodeListState.loaded(episodeListLoaded: $episodeListLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeListStateLoaded &&
            (identical(other.episodeListLoaded, episodeListLoaded) ||
                other.episodeListLoaded == episodeListLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episodeListLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeListStateLoadedCopyWith<_$EpisodeListStateLoaded> get copyWith =>
      __$$EpisodeListStateLoadedCopyWithImpl<_$EpisodeListStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodeList episodeListLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(episodeListLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EpisodeList episodeListLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(episodeListLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodeList episodeListLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episodeListLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeListStateLoading value) loading,
    required TResult Function(EpisodeListStateLoaded value) loaded,
    required TResult Function(EpisodeListStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeListStateLoading value)? loading,
    TResult? Function(EpisodeListStateLoaded value)? loaded,
    TResult? Function(EpisodeListStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeListStateLoading value)? loading,
    TResult Function(EpisodeListStateLoaded value)? loaded,
    TResult Function(EpisodeListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EpisodeListStateLoaded implements EpisodeListState {
  const factory EpisodeListStateLoaded(
          {required final EpisodeList episodeListLoaded}) =
      _$EpisodeListStateLoaded;

  EpisodeList get episodeListLoaded;
  @JsonKey(ignore: true)
  _$$EpisodeListStateLoadedCopyWith<_$EpisodeListStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EpisodeListStateErrorCopyWith<$Res> {
  factory _$$EpisodeListStateErrorCopyWith(_$EpisodeListStateError value,
          $Res Function(_$EpisodeListStateError) then) =
      __$$EpisodeListStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeListStateErrorCopyWithImpl<$Res>
    extends _$EpisodeListStateCopyWithImpl<$Res, _$EpisodeListStateError>
    implements _$$EpisodeListStateErrorCopyWith<$Res> {
  __$$EpisodeListStateErrorCopyWithImpl(_$EpisodeListStateError _value,
      $Res Function(_$EpisodeListStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeListStateError implements EpisodeListStateError {
  const _$EpisodeListStateError();

  @override
  String toString() {
    return 'EpisodeListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeListStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodeList episodeListLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EpisodeList episodeListLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodeList episodeListLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeListStateLoading value) loading,
    required TResult Function(EpisodeListStateLoaded value) loaded,
    required TResult Function(EpisodeListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeListStateLoading value)? loading,
    TResult? Function(EpisodeListStateLoaded value)? loaded,
    TResult? Function(EpisodeListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeListStateLoading value)? loading,
    TResult Function(EpisodeListStateLoaded value)? loaded,
    TResult Function(EpisodeListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EpisodeListStateError implements EpisodeListState {
  const factory EpisodeListStateError() = _$EpisodeListStateError;
}
