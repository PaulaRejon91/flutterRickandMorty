// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvent {
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
    required TResult Function(CharacterEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterEventCopyWith<CharacterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

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
abstract class _$$CharacterEventFetchCopyWith<$Res>
    implements $CharacterEventCopyWith<$Res> {
  factory _$$CharacterEventFetchCopyWith(_$CharacterEventFetch value,
          $Res Function(_$CharacterEventFetch) then) =
      __$$CharacterEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class __$$CharacterEventFetchCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterEventFetch>
    implements _$$CharacterEventFetchCopyWith<$Res> {
  __$$CharacterEventFetchCopyWithImpl(
      _$CharacterEventFetch _value, $Res Function(_$CharacterEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_$CharacterEventFetch(
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

class _$CharacterEventFetch implements CharacterEventFetch {
  const _$CharacterEventFetch({required this.name, required this.page});

  @override
  final String name;
  @override
  final int page;

  @override
  String toString() {
    return 'CharacterEvent.fetch(name: $name, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEventFetch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterEventFetchCopyWith<_$CharacterEventFetch> get copyWith =>
      __$$CharacterEventFetchCopyWithImpl<_$CharacterEventFetch>(
          this, _$identity);

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
    required TResult Function(CharacterEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CharacterEventFetch implements CharacterEvent {
  const factory CharacterEventFetch(
      {required final String name,
      required final int page}) = _$CharacterEventFetch;

  @override
  String get name;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$CharacterEventFetchCopyWith<_$CharacterEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterStateLoadingCopyWith<$Res> {
  factory _$$CharacterStateLoadingCopyWith(_$CharacterStateLoading value,
          $Res Function(_$CharacterStateLoading) then) =
      __$$CharacterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateLoadingCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateLoading>
    implements _$$CharacterStateLoadingCopyWith<$Res> {
  __$$CharacterStateLoadingCopyWithImpl(_$CharacterStateLoading _value,
      $Res Function(_$CharacterStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateLoading implements CharacterStateLoading {
  const _$CharacterStateLoading();

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
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
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoading implements CharacterState {
  const factory CharacterStateLoading() = _$CharacterStateLoading;
}

/// @nodoc
abstract class _$$CharacterStateLoadedCopyWith<$Res> {
  factory _$$CharacterStateLoadedCopyWith(_$CharacterStateLoaded value,
          $Res Function(_$CharacterStateLoaded) then) =
      __$$CharacterStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Character characterLoaded});

  $CharacterCopyWith<$Res> get characterLoaded;
}

/// @nodoc
class __$$CharacterStateLoadedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateLoaded>
    implements _$$CharacterStateLoadedCopyWith<$Res> {
  __$$CharacterStateLoadedCopyWithImpl(_$CharacterStateLoaded _value,
      $Res Function(_$CharacterStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterLoaded = null,
  }) {
    return _then(_$CharacterStateLoaded(
      characterLoaded: null == characterLoaded
          ? _value.characterLoaded
          : characterLoaded // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get characterLoaded {
    return $CharacterCopyWith<$Res>(_value.characterLoaded, (value) {
      return _then(_value.copyWith(characterLoaded: value));
    });
  }
}

/// @nodoc

class _$CharacterStateLoaded implements CharacterStateLoaded {
  const _$CharacterStateLoaded({required this.characterLoaded});

  @override
  final Character characterLoaded;

  @override
  String toString() {
    return 'CharacterState.loaded(characterLoaded: $characterLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateLoaded &&
            (identical(other.characterLoaded, characterLoaded) ||
                other.characterLoaded == characterLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateLoadedCopyWith<_$CharacterStateLoaded> get copyWith =>
      __$$CharacterStateLoadedCopyWithImpl<_$CharacterStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(characterLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(characterLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characterLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoaded implements CharacterState {
  const factory CharacterStateLoaded(
      {required final Character characterLoaded}) = _$CharacterStateLoaded;

  Character get characterLoaded;
  @JsonKey(ignore: true)
  _$$CharacterStateLoadedCopyWith<_$CharacterStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterStateErrorCopyWith<$Res> {
  factory _$$CharacterStateErrorCopyWith(_$CharacterStateError value,
          $Res Function(_$CharacterStateError) then) =
      __$$CharacterStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateErrorCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateError>
    implements _$$CharacterStateErrorCopyWith<$Res> {
  __$$CharacterStateErrorCopyWithImpl(
      _$CharacterStateError _value, $Res Function(_$CharacterStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateError implements CharacterStateError {
  const _$CharacterStateError();

  @override
  String toString() {
    return 'CharacterState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
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
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharacterStateError implements CharacterState {
  const factory CharacterStateError() = _$CharacterStateError;
}
