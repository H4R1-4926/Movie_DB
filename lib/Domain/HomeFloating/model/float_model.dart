// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'float_model.freezed.dart';
part 'float_model.g.dart';

@freezed
class FloatData with _$FloatData {
  const factory FloatData({
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "backdrop_path") required String? bacdropPath,
    @JsonKey(name: "poster_path") required String? postarPath,
    @JsonKey(name: "overview") required String? overview,
    @JsonKey(name: "release_date") required String? data,
    // @JsonKey(name: "genre_ids") required String? genre,
  }) = _FloatData;

  factory FloatData.fromJson(Map<String, dynamic> json) =>
      _$FloatDataFromJson(json);
}
