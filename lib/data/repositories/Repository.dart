import 'dart:convert';

import '../models/character.dart';
import 'package:http/http.dart' as http;

class CharacterRepo {
  final url = 'https://rickandmortyapi.com/api/character';
  Future<Character> getCharacter(int page, String name) async {
    try {
      var response = await http.get(Uri.parse(url + '?page=$page&name=$name'));
      var jsonResult = json.decode(response.body);
      return Character.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

class OriginRepo {
  final url = 'https://rickandmortyapi.com/api/character';
  Future<Character> getOrigin(int page, String origin) async {
    try {
      var response =
          await http.get(Uri.parse(url + '?page=$page&origin=$origin'));
      var jsonResult = json.decode(response.body);
      return Character.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
