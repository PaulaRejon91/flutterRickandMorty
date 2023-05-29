import 'package:freezed_annotation/freezed_annotation.dart';

import 'episode.dart';

part 'episodeList.freezed.dart';
part 'episodeList.g.dart';

@freezed
class EpisodeList with _$EpisodeList {
  const factory EpisodeList({
    required List<Episode> episodeList,
  }) = _EpisodeList;

  factory EpisodeList.fromJson(Map<String, dynamic> json) =>
      _$EpisodeListFromJson(json);
}
