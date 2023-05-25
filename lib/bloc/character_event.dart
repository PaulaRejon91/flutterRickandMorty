part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.fetch({
    required String name,
    required int page,
  }) = CharacterEventFetch;
}
/*En esta sección se utiliza la anotación @freezed de la biblioteca freezed_annotation
 para generar clases de eventos de forma automática. Aquí se define un evento CharacterEvent.fetch 
 que tiene dos parámetros obligatorios: name (nombre del personaje) y page (página de resultados).*/