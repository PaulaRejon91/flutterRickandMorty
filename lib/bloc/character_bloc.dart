import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/data/models/character.dart';
import '../data/repositories/Repository.dart';
part 'character_bloc.freezed.dart';
//part 'character_bloc.g.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepo characterRepo;
  CharacterBloc({required this.characterRepo})
      : super(const CharacterState.loading()) {
    on<CharacterEventFetch>((event, emit) async {
      emit(const CharacterState.loading());
      try {
        Character _characterLoaded =
            await characterRepo.getCharacter(event.page, event.name);
        emit(CharacterState.loaded(characterLoaded: _characterLoaded));
      } catch (_) {
        emit(const CharacterState.error());
      }
    });
  }
}
  /*CharacterBloc: se encarga de manejar la lógica y el estado relacionado con los personajes.
  tiene un consturctor que recibe un objeto CharacterRepo como argumento. El repositorio se
  utiliza para obtener datos de los personajes.

Dentro del constructor del bloc, se define un evento CharacterEventFetch utilizando el método on. 
Este evento se activa cuando se llama al bloc con este evento específico. 

Dentro del controlador de eventos, se emite el estado de carga inicial y se intenta obtener un personaje
 utilizando el repositorio characterRepo. Si la obtención de datos tiene éxito, se emite un estado 
 de "cargado" con el personaje obtenido. Si ocurre un error, se emite un estado de "error".


  palabras clave:
  emit: para enviar un evento o un estado desde un bloque hacia los componentes q lo escuchan. Un bloque
  (clase q implementa la lógica) puede tener múltiples salidas(eventos o estados) que pueden ser emitidos
  mediante el uso de la función emit


  PASOS PARA HACER MI ARQUITECTURA BLOC:

  1. character_bloc. Creo el archivo de bloc: aqui defino la lógica del bloc.
  2. character_event. Defino los evento que bloc debe manejar.
  3. character_state. Defino los estados que bloc puede tener.
  4. Dentro del arch. bloc defino la clase CharacterBloc que extiende de Bloc y especifico los tipos
  de eventos y estados. Luego impremento el constructor y los métodos necesarios para manejar
  los eventos y cambiar el estado.
  5. En el archivo que deseo implementar bloc, importo character_bloc.dart y creo una instancia del bloc.
 Utilizo el widget BlocProvider y el widget BlocBuilder (en mi caso en homepage)
  */