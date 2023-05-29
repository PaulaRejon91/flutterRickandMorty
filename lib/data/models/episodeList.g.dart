// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodeList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodeList _$$_EpisodeListFromJson(Map<String, dynamic> json) =>
    _$_EpisodeList(
      episodeList: (json['episodeList'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EpisodeListToJson(_$_EpisodeList instance) =>
    <String, dynamic>{
      'episodeList': instance.episodeList,
    };
