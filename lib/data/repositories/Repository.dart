// ignore: file_names
import 'dart:convert';
import '../models/character.dart';
import 'package:http/http.dart' as http;
import '../models/episode.dart';
import '../models/episodeList.dart';

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
      print(response);
      var jsonResult = json.decode(response.body);
      print(jsonResult);
      return Episode.fromJson(jsonResult);
    } catch (e) {
      print(e);
      throw Exception(e.toString());
    }
  }

  Future<EpisodeList> getCharactersBySeason(List<int> episodes) async {
    try {
      var response =
          await http.get(Uri.parse('${url}episode/${episodes.join(",")}'));
      var jsonResult = json.decode(response.body);

      return EpisodeList.fromJson({'episodeList': jsonResult});
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
