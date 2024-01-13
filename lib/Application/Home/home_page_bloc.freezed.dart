// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getImgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getImgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getImgs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImgs value) getImgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImgs value)? getImgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImgs value)? getImgs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetImgsImplCopyWith<$Res> {
  factory _$$GetImgsImplCopyWith(
          _$GetImgsImpl value, $Res Function(_$GetImgsImpl) then) =
      __$$GetImgsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImgsImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$GetImgsImpl>
    implements _$$GetImgsImplCopyWith<$Res> {
  __$$GetImgsImplCopyWithImpl(
      _$GetImgsImpl _value, $Res Function(_$GetImgsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImgsImpl implements GetImgs {
  const _$GetImgsImpl();

  @override
  String toString() {
    return 'HomePageEvent.getImgs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImgsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getImgs,
  }) {
    return getImgs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getImgs,
  }) {
    return getImgs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getImgs,
    required TResult orElse(),
  }) {
    if (getImgs != null) {
      return getImgs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImgs value) getImgs,
  }) {
    return getImgs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImgs value)? getImgs,
  }) {
    return getImgs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImgs value)? getImgs,
    required TResult orElse(),
  }) {
    if (getImgs != null) {
      return getImgs(this);
    }
    return orElse();
  }
}

abstract class GetImgs implements HomePageEvent {
  const factory GetImgs() = _$GetImgsImpl;
}

/// @nodoc
mixin _$HomePageState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get onErr => throw _privateConstructorUsedError;
  List<HomePageData> get newRelease => throw _privateConstructorUsedError;
  List<HomePageData> get trending => throw _privateConstructorUsedError;
  List<HomePageData> get topTen => throw _privateConstructorUsedError;
  List<HomePageData> get popTvs => throw _privateConstructorUsedError;
  List<HomePageData> get popMovies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {bool isloading,
      bool onErr,
      List<HomePageData> newRelease,
      List<HomePageData> trending,
      List<HomePageData> topTen,
      List<HomePageData> popTvs,
      List<HomePageData> popMovies});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? onErr = null,
    Object? newRelease = null,
    Object? trending = null,
    Object? topTen = null,
    Object? popTvs = null,
    Object? popMovies = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      onErr: null == onErr
          ? _value.onErr
          : onErr // ignore: cast_nullable_to_non_nullable
              as bool,
      newRelease: null == newRelease
          ? _value.newRelease
          : newRelease // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      topTen: null == topTen
          ? _value.topTen
          : topTen // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      popTvs: null == popTvs
          ? _value.popTvs
          : popTvs // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      popMovies: null == popMovies
          ? _value.popMovies
          : popMovies // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      bool onErr,
      List<HomePageData> newRelease,
      List<HomePageData> trending,
      List<HomePageData> topTen,
      List<HomePageData> popTvs,
      List<HomePageData> popMovies});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? onErr = null,
    Object? newRelease = null,
    Object? trending = null,
    Object? topTen = null,
    Object? popTvs = null,
    Object? popMovies = null,
  }) {
    return _then(_$HomePageStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      onErr: null == onErr
          ? _value.onErr
          : onErr // ignore: cast_nullable_to_non_nullable
              as bool,
      newRelease: null == newRelease
          ? _value._newRelease
          : newRelease // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      topTen: null == topTen
          ? _value._topTen
          : topTen // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      popTvs: null == popTvs
          ? _value._popTvs
          : popTvs // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
      popMovies: null == popMovies
          ? _value._popMovies
          : popMovies // ignore: cast_nullable_to_non_nullable
              as List<HomePageData>,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl(
      {required this.isloading,
      required this.onErr,
      required final List<HomePageData> newRelease,
      required final List<HomePageData> trending,
      required final List<HomePageData> topTen,
      required final List<HomePageData> popTvs,
      required final List<HomePageData> popMovies})
      : _newRelease = newRelease,
        _trending = trending,
        _topTen = topTen,
        _popTvs = popTvs,
        _popMovies = popMovies;

  @override
  final bool isloading;
  @override
  final bool onErr;
  final List<HomePageData> _newRelease;
  @override
  List<HomePageData> get newRelease {
    if (_newRelease is EqualUnmodifiableListView) return _newRelease;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newRelease);
  }

  final List<HomePageData> _trending;
  @override
  List<HomePageData> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  final List<HomePageData> _topTen;
  @override
  List<HomePageData> get topTen {
    if (_topTen is EqualUnmodifiableListView) return _topTen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTen);
  }

  final List<HomePageData> _popTvs;
  @override
  List<HomePageData> get popTvs {
    if (_popTvs is EqualUnmodifiableListView) return _popTvs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popTvs);
  }

  final List<HomePageData> _popMovies;
  @override
  List<HomePageData> get popMovies {
    if (_popMovies is EqualUnmodifiableListView) return _popMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popMovies);
  }

  @override
  String toString() {
    return 'HomePageState(isloading: $isloading, onErr: $onErr, newRelease: $newRelease, trending: $trending, topTen: $topTen, popTvs: $popTvs, popMovies: $popMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.onErr, onErr) || other.onErr == onErr) &&
            const DeepCollectionEquality()
                .equals(other._newRelease, _newRelease) &&
            const DeepCollectionEquality().equals(other._trending, _trending) &&
            const DeepCollectionEquality().equals(other._topTen, _topTen) &&
            const DeepCollectionEquality().equals(other._popTvs, _popTvs) &&
            const DeepCollectionEquality()
                .equals(other._popMovies, _popMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      onErr,
      const DeepCollectionEquality().hash(_newRelease),
      const DeepCollectionEquality().hash(_trending),
      const DeepCollectionEquality().hash(_topTen),
      const DeepCollectionEquality().hash(_popTvs),
      const DeepCollectionEquality().hash(_popMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {required final bool isloading,
      required final bool onErr,
      required final List<HomePageData> newRelease,
      required final List<HomePageData> trending,
      required final List<HomePageData> topTen,
      required final List<HomePageData> popTvs,
      required final List<HomePageData> popMovies}) = _$HomePageStateImpl;

  @override
  bool get isloading;
  @override
  bool get onErr;
  @override
  List<HomePageData> get newRelease;
  @override
  List<HomePageData> get trending;
  @override
  List<HomePageData> get topTen;
  @override
  List<HomePageData> get popTvs;
  @override
  List<HomePageData> get popMovies;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
