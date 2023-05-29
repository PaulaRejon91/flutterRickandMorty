part of 'episodeList_bloc.dart';

@freezed
class EpisodeListState with _$EpisodeListState {
  const factory EpisodeListState.loading() = EpisodeListStateLoading;
  const factory EpisodeListState.loaded(
      {required EpisodeList episodeListLoaded}) = EpisodeListStateLoaded;
  const factory EpisodeListState.error() = EpisodeListStateError;
}

/*aquí se utiliza @freezed para generar clases de estados de forma automática. 
Se definen tres estados posibles: 
  -EpisodeListState.loading (cargando)
  -EpisodeListState.loaded (cargado) con un parámetro obligatorio episodeListLoaded que es una instancia
  del modelo EpisodeList
 -EpisodeListState.error (error)

*/

