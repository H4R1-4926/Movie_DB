// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() topSearch,
    required TResult Function(String movieQuery) searchresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? topSearch,
    TResult? Function(String movieQuery)? searchresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? topSearch,
    TResult Function(String movieQuery)? searchresult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopSearch value) topSearch,
    required TResult Function(Searchresult value) searchresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopSearch value)? topSearch,
    TResult? Function(Searchresult value)? searchresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopSearch value)? topSearch,
    TResult Function(Searchresult value)? searchresult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageEventCopyWith<$Res> {
  factory $SearchPageEventCopyWith(
          SearchPageEvent value, $Res Function(SearchPageEvent) then) =
      _$SearchPageEventCopyWithImpl<$Res, SearchPageEvent>;
}

/// @nodoc
class _$SearchPageEventCopyWithImpl<$Res, $Val extends SearchPageEvent>
    implements $SearchPageEventCopyWith<$Res> {
  _$SearchPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TopSearchImplCopyWith<$Res> {
  factory _$$TopSearchImplCopyWith(
          _$TopSearchImpl value, $Res Function(_$TopSearchImpl) then) =
      __$$TopSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopSearchImplCopyWithImpl<$Res>
    extends _$SearchPageEventCopyWithImpl<$Res, _$TopSearchImpl>
    implements _$$TopSearchImplCopyWith<$Res> {
  __$$TopSearchImplCopyWithImpl(
      _$TopSearchImpl _value, $Res Function(_$TopSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopSearchImpl implements TopSearch {
  const _$TopSearchImpl();

  @override
  String toString() {
    return 'SearchPageEvent.topSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TopSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() topSearch,
    required TResult Function(String movieQuery) searchresult,
  }) {
    return topSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? topSearch,
    TResult? Function(String movieQuery)? searchresult,
  }) {
    return topSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? topSearch,
    TResult Function(String movieQuery)? searchresult,
    required TResult orElse(),
  }) {
    if (topSearch != null) {
      return topSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopSearch value) topSearch,
    required TResult Function(Searchresult value) searchresult,
  }) {
    return topSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopSearch value)? topSearch,
    TResult? Function(Searchresult value)? searchresult,
  }) {
    return topSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopSearch value)? topSearch,
    TResult Function(Searchresult value)? searchresult,
    required TResult orElse(),
  }) {
    if (topSearch != null) {
      return topSearch(this);
    }
    return orElse();
  }
}

abstract class TopSearch implements SearchPageEvent {
  const factory TopSearch() = _$TopSearchImpl;
}

/// @nodoc
abstract class _$$SearchresultImplCopyWith<$Res> {
  factory _$$SearchresultImplCopyWith(
          _$SearchresultImpl value, $Res Function(_$SearchresultImpl) then) =
      __$$SearchresultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQuery});
}

/// @nodoc
class __$$SearchresultImplCopyWithImpl<$Res>
    extends _$SearchPageEventCopyWithImpl<$Res, _$SearchresultImpl>
    implements _$$SearchresultImplCopyWith<$Res> {
  __$$SearchresultImplCopyWithImpl(
      _$SearchresultImpl _value, $Res Function(_$SearchresultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = null,
  }) {
    return _then(_$SearchresultImpl(
      movieQuery: null == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchresultImpl implements Searchresult {
  const _$SearchresultImpl({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchPageEvent.searchresult(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchresultImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchresultImplCopyWith<_$SearchresultImpl> get copyWith =>
      __$$SearchresultImplCopyWithImpl<_$SearchresultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() topSearch,
    required TResult Function(String movieQuery) searchresult,
  }) {
    return searchresult(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? topSearch,
    TResult? Function(String movieQuery)? searchresult,
  }) {
    return searchresult?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? topSearch,
    TResult Function(String movieQuery)? searchresult,
    required TResult orElse(),
  }) {
    if (searchresult != null) {
      return searchresult(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopSearch value) topSearch,
    required TResult Function(Searchresult value) searchresult,
  }) {
    return searchresult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopSearch value)? topSearch,
    TResult? Function(Searchresult value)? searchresult,
  }) {
    return searchresult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopSearch value)? topSearch,
    TResult Function(Searchresult value)? searchresult,
    required TResult orElse(),
  }) {
    if (searchresult != null) {
      return searchresult(this);
    }
    return orElse();
  }
}

abstract class Searchresult implements SearchPageEvent {
  const factory Searchresult({required final String movieQuery}) =
      _$SearchresultImpl;

  String get movieQuery;
  @JsonKey(ignore: true)
  _$$SearchresultImplCopyWith<_$SearchresultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPageState {
  bool get isloadng => throw _privateConstructorUsedError;
  bool get onErr => throw _privateConstructorUsedError;
  List<SearchData> get searchDet => throw _privateConstructorUsedError;
  List<SearchData> get idlepage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageStateCopyWith<SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res, SearchPageState>;
  @useResult
  $Res call(
      {bool isloadng,
      bool onErr,
      List<SearchData> searchDet,
      List<SearchData> idlepage});
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res, $Val extends SearchPageState>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloadng = null,
    Object? onErr = null,
    Object? searchDet = null,
    Object? idlepage = null,
  }) {
    return _then(_value.copyWith(
      isloadng: null == isloadng
          ? _value.isloadng
          : isloadng // ignore: cast_nullable_to_non_nullable
              as bool,
      onErr: null == onErr
          ? _value.onErr
          : onErr // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDet: null == searchDet
          ? _value.searchDet
          : searchDet // ignore: cast_nullable_to_non_nullable
              as List<SearchData>,
      idlepage: null == idlepage
          ? _value.idlepage
          : idlepage // ignore: cast_nullable_to_non_nullable
              as List<SearchData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPageStateImplCopyWith<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  factory _$$SearchPageStateImplCopyWith(_$SearchPageStateImpl value,
          $Res Function(_$SearchPageStateImpl) then) =
      __$$SearchPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloadng,
      bool onErr,
      List<SearchData> searchDet,
      List<SearchData> idlepage});
}

/// @nodoc
class __$$SearchPageStateImplCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res, _$SearchPageStateImpl>
    implements _$$SearchPageStateImplCopyWith<$Res> {
  __$$SearchPageStateImplCopyWithImpl(
      _$SearchPageStateImpl _value, $Res Function(_$SearchPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloadng = null,
    Object? onErr = null,
    Object? searchDet = null,
    Object? idlepage = null,
  }) {
    return _then(_$SearchPageStateImpl(
      isloadng: null == isloadng
          ? _value.isloadng
          : isloadng // ignore: cast_nullable_to_non_nullable
              as bool,
      onErr: null == onErr
          ? _value.onErr
          : onErr // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDet: null == searchDet
          ? _value._searchDet
          : searchDet // ignore: cast_nullable_to_non_nullable
              as List<SearchData>,
      idlepage: null == idlepage
          ? _value._idlepage
          : idlepage // ignore: cast_nullable_to_non_nullable
              as List<SearchData>,
    ));
  }
}

/// @nodoc

class _$SearchPageStateImpl implements _SearchPageState {
  const _$SearchPageStateImpl(
      {required this.isloadng,
      required this.onErr,
      required final List<SearchData> searchDet,
      required final List<SearchData> idlepage})
      : _searchDet = searchDet,
        _idlepage = idlepage;

  @override
  final bool isloadng;
  @override
  final bool onErr;
  final List<SearchData> _searchDet;
  @override
  List<SearchData> get searchDet {
    if (_searchDet is EqualUnmodifiableListView) return _searchDet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchDet);
  }

  final List<SearchData> _idlepage;
  @override
  List<SearchData> get idlepage {
    if (_idlepage is EqualUnmodifiableListView) return _idlepage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idlepage);
  }

  @override
  String toString() {
    return 'SearchPageState(isloadng: $isloadng, onErr: $onErr, searchDet: $searchDet, idlepage: $idlepage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPageStateImpl &&
            (identical(other.isloadng, isloadng) ||
                other.isloadng == isloadng) &&
            (identical(other.onErr, onErr) || other.onErr == onErr) &&
            const DeepCollectionEquality()
                .equals(other._searchDet, _searchDet) &&
            const DeepCollectionEquality().equals(other._idlepage, _idlepage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloadng,
      onErr,
      const DeepCollectionEquality().hash(_searchDet),
      const DeepCollectionEquality().hash(_idlepage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      __$$SearchPageStateImplCopyWithImpl<_$SearchPageStateImpl>(
          this, _$identity);
}

abstract class _SearchPageState implements SearchPageState {
  const factory _SearchPageState(
      {required final bool isloadng,
      required final bool onErr,
      required final List<SearchData> searchDet,
      required final List<SearchData> idlepage}) = _$SearchPageStateImpl;

  @override
  bool get isloadng;
  @override
  bool get onErr;
  @override
  List<SearchData> get searchDet;
  @override
  List<SearchData> get idlepage;
  @override
  @JsonKey(ignore: true)
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
