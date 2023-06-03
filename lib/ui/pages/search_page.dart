// ignore_for_file: unused_field, deprecated_member_use
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/ui/pages/episode_search_page.dart';
import 'package:rickandmorty/ui/pages/favorites_page.dart';
import 'package:rickandmorty/ui/widgets/custom_list_tile.dart';
import '../../bloc/character_bloc.dart';
import '../../data/models/character.dart';
import 'character_detail_pages.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Character _currentCharacter;
  List<Results> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchStr = '';

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<CharacterBloc>()
          .add(const CharacterEvent.fetch(name: '', page: 1));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharacterBloc>().state;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Rick and Morty'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 15, bottom: 1, left: 16, right: 16),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(86, 86, 86, 0.8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                hintText: 'Search Name',
                hintStyle: const TextStyle(color: Colors.white),
              ),
              onChanged: (value) {
                _currentPage = 1;
                _currentResults = [];
                _currentSearchStr = value;

                context
                    .read<CharacterBloc>()
                    .add(CharacterEvent.fetch(name: value, page: 1));
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EpisodeSearchPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: const Text(
                  'Episodes',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FavoritesPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: const Text(
                  'Favorites',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ElevatedButton(
                onPressed: _showRandomCharacter,
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: const Text(
                  'Random Character',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          Expanded(
            child: state.when(
              loading: () {
                return const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(strokeWidth: 2),
                      SizedBox(width: 10),
                      Text('Loading...'),
                    ],
                  ),
                );
              },
              loaded: (characterLoaded) {
                _currentCharacter = characterLoaded;
                _currentResults = _currentCharacter.results;
                return _currentResults.isNotEmpty
                    ? _customListView(_currentResults)
                    : const SizedBox(height: 10);
              },
              error: () => const Text('Nothing found...'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _customListView(List<Results> currentResults) {
    return ListView.separated(
      itemCount: currentResults.length,
      separatorBuilder: (_, index) => const SizedBox(height: 5),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final result = currentResults[index];
        return Padding(
          padding:
              const EdgeInsets.only(right: 16, left: 16, top: 3, bottom: 3),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetail(result: result),
                ),
              );
            },
            child: CustomListTile(result: result),
          ),
        );
      },
    );
  }

  void _showRandomCharacter() {
    final random = Random();
    final randomIndex = random.nextInt(_currentResults.length);
    final randomCharacter = _currentResults[randomIndex];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CharacterDetail(result: randomCharacter),
      ),
    );
  }
}
