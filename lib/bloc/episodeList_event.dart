part of 'episodeList_bloc.dart';

@freezed
class EpisodeListEvent with _$EpisodeListEvent {
  const factory EpisodeListEvent.fetch({
    required List<int> episodeList,
  }) = EpisodeListEventFetch;
}
/*En esta sección se utiliza la anotación @freezed de la biblioteca freezed_annotation
 para generar clases de eventos de forma automática. Aquí se define un evento EpisodeListEvent.fetch 
 que tiene dos parámetros obligatorios: name (nombre del personaje) y page (página de resultados).*/