// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpisodeEvent {
  String get name => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeEventCopyWith<EpisodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventCopyWith(
          EpisodeEvent value, $Res Function(EpisodeEvent) then) =
      _$EpisodeEventCopyWithImpl<$Res, EpisodeEvent>;
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class _$EpisodeEventCopyWithImpl<$Res, $Val extends EpisodeEvent>
    implements $EpisodeEventCopyWith<$Res> {
  _$EpisodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeEventFetchCopyWith<$Res>
    implements $EpisodeEventCopyWith<$Res> {
  factory _$$EpisodeEventFetchCopyWith(
          _$EpisodeEventFetch value, $Res Function(_$EpisodeEventFetch) then) =
      __$$EpisodeEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class __$$EpisodeEventFetchCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$EpisodeEventFetch>
    implements _$$EpisodeEventFetchCopyWith<$Res> {
  __$$EpisodeEventFetchCopyWithImpl(
      _$EpisodeEventFetch _value, $Res Function(_$EpisodeEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_$EpisodeEventFetch(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EpisodeEventFetch implements EpisodeEventFetch {
  const _$EpisodeEventFetch({required this.name, required this.page});

  @override
  final String name;
  @override
  final int page;

  @override
  String toString() {
    return 'EpisodeEvent.fetch(name: $name, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeEventFetch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeEventFetchCopyWith<_$EpisodeEventFetch> get copyWith =>
      __$$EpisodeEventFetchCopyWithImpl<_$EpisodeEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) {
    return fetch(name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) {
    return fetch?.call(name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class EpisodeEventFetch implements EpisodeEvent {
  const factory EpisodeEventFetch(
      {required final String name,
      required final int page}) = _$EpisodeEventFetch;

  @override
  String get name;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeEventFetchCopyWith<_$EpisodeEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpisodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episode episodeLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Episode episodeLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episode episodeLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateLoaded value)? loaded,
    TResult? Function(EpisodeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res, EpisodeState>;
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res, $Val extends EpisodeState>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EpisodeStateLoadingCopyWith<$Res> {
  factory _$$EpisodeStateLoadingCopyWith(_$EpisodeStateLoading value,
          $Res Function(_$EpisodeStateLoading) then) =
      __$$EpisodeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeStateLoadingCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateLoading>
    implements _$$EpisodeStateLoadingCopyWith<$Res> {
  __$$EpisodeStateLoadingCopyWithImpl(
      _$EpisodeStateLoading _value, $Res Function(_$EpisodeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeStateLoading implements EpisodeStateLoading {
  const _$EpisodeStateLoading();

  @override
  String toString() {
    return 'EpisodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episode episodeLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Episode episodeLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episode episodeLoaded)? loaded,
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
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateLoaded value)? loaded,
    TResult? Function(EpisodeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateLoading implements EpisodeState {
  const factory EpisodeStateLoading() = _$EpisodeStateLoading;
}

/// @nodoc
abstract class _$$EpisodeStateLoadedCopyWith<$Res> {
  factory _$$EpisodeStateLoadedCopyWith(_$EpisodeStateLoaded value,
          $Res Function(_$EpisodeStateLoaded) then) =
      __$$EpisodeStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Episode episodeLoaded});

  $EpisodeCopyWith<$Res> get episodeLoaded;
}

/// @nodoc
class __$$EpisodeStateLoadedCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateLoaded>
    implements _$$EpisodeStateLoadedCopyWith<$Res> {
  __$$EpisodeStateLoadedCopyWithImpl(
      _$EpisodeStateLoaded _value, $Res Function(_$EpisodeStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeLoaded = null,
  }) {
    return _then(_$EpisodeStateLoaded(
      episodeLoaded: null == episodeLoaded
          ? _value.episodeLoaded
          : episodeLoaded // ignore: cast_nullable_to_non_nullable
              as Episode,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeCopyWith<$Res> get episodeLoaded {
    return $EpisodeCopyWith<$Res>(_value.episodeLoaded, (value) {
      return _then(_value.copyWith(episodeLoaded: value));
    });
  }
}

/// @nodoc

class _$EpisodeStateLoaded implements EpisodeStateLoaded {
  const _$EpisodeStateLoaded({required this.episodeLoaded});

  @override
  final Episode episodeLoaded;

  @override
  String toString() {
    return 'EpisodeState.loaded(episodeLoaded: $episodeLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeStateLoaded &&
            (identical(other.episodeLoaded, episodeLoaded) ||
                other.episodeLoaded == episodeLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episodeLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeStateLoadedCopyWith<_$EpisodeStateLoaded> get copyWith =>
      __$$EpisodeStateLoadedCopyWithImpl<_$EpisodeStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episode episodeLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(episodeLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Episode episodeLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(episodeLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episode episodeLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episodeLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateLoaded value)? loaded,
    TResult? Function(EpisodeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateLoaded implements EpisodeState {
  const factory EpisodeStateLoaded({required final Episode episodeLoaded}) =
      _$EpisodeStateLoaded;

  Episode get episodeLoaded;
  @JsonKey(ignore: true)
  _$$EpisodeStateLoadedCopyWith<_$EpisodeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EpisodeStateErrorCopyWith<$Res> {
  factory _$$EpisodeStateErrorCopyWith(
          _$EpisodeStateError value, $Res Function(_$EpisodeStateError) then) =
      __$$EpisodeStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeStateErrorCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateError>
    implements _$$EpisodeStateErrorCopyWith<$Res> {
  __$$EpisodeStateErrorCopyWithImpl(
      _$EpisodeStateError _value, $Res Function(_$EpisodeStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeStateError implements EpisodeStateError {
  const _$EpisodeStateError();

  @override
  String toString() {
    return 'EpisodeState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episode episodeLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Episode episodeLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episode episodeLoaded)? loaded,
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
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeStateLoading value)? loading,
    TResult? Function(EpisodeStateLoaded value)? loaded,
    TResult? Function(EpisodeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateError implements EpisodeState {
  const factory EpisodeStateError() = _$EpisodeStateError;
}
