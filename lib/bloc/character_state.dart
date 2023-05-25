part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = CharacterStateLoading;
  const factory CharacterState.loaded({required Character characterLoaded}) =
      CharacterStateLoaded;
  const factory CharacterState.error() = CharacterStateError;
}

/*aquí se utiliza @freezed para generar clases de estados de forma automática. 
Se definen tres estados posibles: 
  -CharacterState.loading (cargando)
  -CharacterState.loaded (cargado) con un parámetro obligatorio characterLoaded que es una instancia
  del modelo Character
 -CharacterState.error (error)

*/

