// ignore: file_names
import 'dart:convert';
import '../models/character.dart';
import 'package:http/http.dart' as http;
import '../models/episode.dart';

class Repository {
  final url = 'https://rickandmortyapi.com/api/';
  Future<Character> getCharacterByName(int page, String name) async {
    try {
      var response =
          await http.get(Uri.parse('${url}character?page=$page&name=$name'));
      var jsonResult = json.decode(response.body);
      return Character.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Episode> getEpisode(int page, String name) async {
    try {
      var response =
          await http.get(Uri.parse('${url}episode?page=$page&name=$name'));
      var jsonResult = json.decode(response.body);
      return Episode.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
