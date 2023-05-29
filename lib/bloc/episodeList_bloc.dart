import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/episodeList.dart';
import '../data/repositories/repository.dart';
part 'episodeList_bloc.freezed.dart';
//part 'episodeList_bloc.g.dart';
part 'episodeList_event.dart';
part 'episodeList_state.dart';

class EpisodeListBloc extends Bloc<EpisodeListEvent, EpisodeListState> {
  final Repository episodeListRepo;
  EpisodeListBloc({required this.episodeListRepo})
      : super(const EpisodeListState.loading()) {
    on<EpisodeListEventFetch>((event, emit) async {
      emit(const EpisodeListState.loading());
      try {
        EpisodeList _episodeListLoaded =
            await episodeListRepo.getCharactersBySeason(event.episodeList);
        emit(EpisodeListState.loaded(episodeListLoaded: _episodeListLoaded));
      } catch (_) {
        emit(const EpisodeListState.error());
      }
    });
  }
}
  /*EpisodeListBloc: se encarga de manejar la lógica y el estado relacionado con los personajes.
  tiene un consturctor que recibe un objeto EpisodeListRepo como argumento. El repositorio se
  utiliza para obtener datos de los personajes.

Dentro del constructor del bloc, se define un evento EpisodeListEventFetch utilizando el método on. 
Este evento se activa cuando se llama al bloc con este evento específico. 

Dentro del controlador de eventos, se emite el estado de carga inicial y se intenta obtener un personaje
 utilizando el repositorio episodeListRepo. Si la obtención de datos tiene éxito, se emite un estado 
 de "cargado" con el personaje obtenido. Si ocurre un error, se emite un estado de "error".


  palabras clave:
  emit: para enviar un evento o un estado desde un bloque hacia los componentes q lo escuchan. Un bloque
  (clase q implementa la lógica) puede tener múltiples salidas(eventos o estados) que pueden ser emitidos
  mediante el uso de la función emit


  PASOS PARA HACER MI ARQUITECTURA BLOC:

  1. episodeList_bloc. Creo el archivo de bloc: aqui defino la lógica del bloc.
  2. episodeList_event. Defino los evento que bloc debe manejar.
  3. episodeList_state. Defino los estados que bloc puede tener.
  4. Dentro del arch. bloc defino la clase EpisodeListBloc que extiende de Bloc y especifico los tipos
  de eventos y estados. Luego impremento el constructor y los métodos necesarios para manejar
  los eventos y cambiar el estado.
  5. En el archivo que deseo implementar bloc, importo episodeList_bloc.dart y creo una instancia del bloc.
 Utilizo el widget BlocProvider y el widget BlocBuilder (en mi caso en homepage)
  */