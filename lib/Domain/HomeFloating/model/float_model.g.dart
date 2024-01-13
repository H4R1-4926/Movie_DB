// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'float_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FloatDataImpl _$$FloatDataImplFromJson(Map<String, dynamic> json) =>
    _$FloatDataImpl(
      title: json['title'] as String?,
      name: json['name'] as String?,
      bacdropPath: json['backdrop_path'] as String?,
      postarPath: json['poster_path'] as String?,
      overview: json['overview'] as String?,
      data: json['release_date'] as String?,
    );

Map<String, dynamic> _$$FloatDataImplToJson(_$FloatDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'backdrop_path': instance.bacdropPath,
      'poster_path': instance.postarPath,
      'overview': instance.overview,
      'release_date': instance.data,
    };
