// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comingsoon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComingSoonData _$ComingSoonDataFromJson(Map<String, dynamic> json) {
  return _ComingSoonData.fromJson(json);
}

/// @nodoc
mixin _$ComingSoonData {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get bacdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get postarPath => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int> get genre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComingSoonDataCopyWith<ComingSoonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComingSoonDataCopyWith<$Res> {
  factory $ComingSoonDataCopyWith(
          ComingSoonData value, $Res Function(ComingSoonData) then) =
      _$ComingSoonDataCopyWithImpl<$Res, ComingSoonData>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "backdrop_path") String? bacdropPath,
      @JsonKey(name: "poster_path") String? postarPath,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? data,
      @JsonKey(name: "genre_ids") List<int> genre});
}

/// @nodoc
class _$ComingSoonDataCopyWithImpl<$Res, $Val extends ComingSoonData>
    implements $ComingSoonDataCopyWith<$Res> {
  _$ComingSoonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? bacdropPath = freezed,
    Object? postarPath = freezed,
    Object? overview = freezed,
    Object? data = freezed,
    Object? genre = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bacdropPath: freezed == bacdropPath
          ? _value.bacdropPath
          : bacdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      postarPath: freezed == postarPath
          ? _value.postarPath
          : postarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComingSoonDataImplCopyWith<$Res>
    implements $ComingSoonDataCopyWith<$Res> {
  factory _$$ComingSoonDataImplCopyWith(_$ComingSoonDataImpl value,
          $Res Function(_$ComingSoonDataImpl) then) =
      __$$ComingSoonDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "backdrop_path") String? bacdropPath,
      @JsonKey(name: "poster_path") String? postarPath,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? data,
      @JsonKey(name: "genre_ids") List<int> genre});
}

/// @nodoc
class __$$ComingSoonDataImplCopyWithImpl<$Res>
    extends _$ComingSoonDataCopyWithImpl<$Res, _$ComingSoonDataImpl>
    implements _$$ComingSoonDataImplCopyWith<$Res> {
  __$$ComingSoonDataImplCopyWithImpl(
      _$ComingSoonDataImpl _value, $Res Function(_$ComingSoonDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? name = freezed,
    Object? bacdropPath = freezed,
    Object? postarPath = freezed,
    Object? overview = freezed,
    Object? data = freezed,
    Object? genre = null,
  }) {
    return _then(_$ComingSoonDataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bacdropPath: freezed == bacdropPath
          ? _value.bacdropPath
          : bacdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      postarPath: freezed == postarPath
          ? _value.postarPath
          : postarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComingSoonDataImpl implements _ComingSoonData {
  const _$ComingSoonDataImpl(
      {@JsonKey(name: "title") required this.title,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "backdrop_path") required this.bacdropPath,
      @JsonKey(name: "poster_path") required this.postarPath,
      @JsonKey(name: "overview") required this.overview,
      @JsonKey(name: "release_date") required this.data,
      @JsonKey(name: "genre_ids") required final List<int> genre})
      : _genre = genre;

  factory _$ComingSoonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComingSoonDataImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "backdrop_path")
  final String? bacdropPath;
  @override
  @JsonKey(name: "poster_path")
  final String? postarPath;
  @override
  @JsonKey(name: "overview")
  final String? overview;
  @override
  @JsonKey(name: "release_date")
  final String? data;
  final List<int> _genre;
  @override
  @JsonKey(name: "genre_ids")
  List<int> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  @override
  String toString() {
    return 'ComingSoonData(title: $title, name: $name, bacdropPath: $bacdropPath, postarPath: $postarPath, overview: $overview, data: $data, genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComingSoonDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bacdropPath, bacdropPath) ||
                other.bacdropPath == bacdropPath) &&
            (identical(other.postarPath, postarPath) ||
                other.postarPath == postarPath) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._genre, _genre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, name, bacdropPath,
      postarPath, overview, data, const DeepCollectionEquality().hash(_genre));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComingSoonDataImplCopyWith<_$ComingSoonDataImpl> get copyWith =>
      __$$ComingSoonDataImplCopyWithImpl<_$ComingSoonDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComingSoonDataImplToJson(
      this,
    );
  }
}

abstract class _ComingSoonData implements ComingSoonData {
  const factory _ComingSoonData(
          {@JsonKey(name: "title") required final String? title,
          @JsonKey(name: "name") required final String? name,
          @JsonKey(name: "backdrop_path") required final String? bacdropPath,
          @JsonKey(name: "poster_path") required final String? postarPath,
          @JsonKey(name: "overview") required final String? overview,
          @JsonKey(name: "release_date") required final String? data,
          @JsonKey(name: "genre_ids") required final List<int> genre}) =
      _$ComingSoonDataImpl;

  factory _ComingSoonData.fromJson(Map<String, dynamic> json) =
      _$ComingSoonDataImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "backdrop_path")
  String? get bacdropPath;
  @override
  @JsonKey(name: "poster_path")
  String? get postarPath;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(name: "release_date")
  String? get data;
  @override
  @JsonKey(name: "genre_ids")
  List<int> get genre;
  @override
  @JsonKey(ignore: true)
  _$$ComingSoonDataImplCopyWith<_$ComingSoonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
