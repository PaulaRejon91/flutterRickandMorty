import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/episode.dart';
import '../data/repositories/repository.dart';
part 'episode_bloc.freezed.dart';
//part 'episode_bloc.g.dart';
part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  final Repository episodeRepo;
  EpisodeBloc({required this.episodeRepo})
      : super(const EpisodeState.loading()) {
    on<EpisodeEventFetch>((event, emit) async {
      emit(const EpisodeState.loading());
      try {
        Episode _episodeLoaded =
            await episodeRepo.getEpisode(event.page, event.name);
        emit(EpisodeState.loaded(episodeLoaded: _episodeLoaded));
      } catch (_) {
        emit(const EpisodeState.error());
      }
    });
  }
}
