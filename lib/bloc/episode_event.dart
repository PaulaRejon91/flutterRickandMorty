part of 'episode_bloc.dart';

@freezed
class EpisodeEvent with _$EpisodeEvent {
  const factory EpisodeEvent.fetch({
    required String name,
    required int page,
  }) = EpisodeEventFetch;
}
