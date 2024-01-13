// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchDataImpl _$$SearchDataImplFromJson(Map<String, dynamic> json) =>
    _$SearchDataImpl(
      title: json['title'] as String?,
      name: json['name'] as String?,
      bacdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      overview: json['overview'] as String?,
      data: json['release_date'] as String?,
      mediaType: json['media_type'] as String?,
      tvDate: json['first_air_date'] as String?,
      genre: (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$SearchDataImplToJson(_$SearchDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'backdrop_path': instance.bacdropPath,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'release_date': instance.data,
      'media_type': instance.mediaType,
      'first_air_date': instance.tvDate,
      'genre_ids': instance.genre,
    };
