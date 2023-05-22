import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'character.freezed.dart';
part 'character.g.dart';

// La palabra clave part se utiliza en los archivos generados por Freezed para indicar que este archivo forma parte de un conjunto de archivos que trabajan juntos para generar el código necesario
// El archivo character.freezed.dart contiene las definiciones de las clases de datos inmutables y las anotaciones necesarias para generar el código relacionado.
// Este archivo es generado por Freezed y contiene el código generado para la serialización de objetos. Proporciona funciones para convertir objetos de las clases generadas en estructuras de datos JSON y viceversa.
@freezed
class Character with _$Character {
  const factory Character({
    required Info info,
    required List<Results> results,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
