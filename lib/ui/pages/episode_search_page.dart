// ignore_for_file: unused_field
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/episode_bloc.dart';
import '../../data/models/episode.dart';
import '../widgets/episode_custom_list_tile.dart';
import 'episode_detail_page.dart';
import 'home_page.dart';

class EpisodeSearchPage extends StatefulWidget {
  const EpisodeSearchPage({Key? key}) : super(key: key);

  @override
  State<EpisodeSearchPage> createState() => _EpisodeSearchPageState();
}

class _EpisodeSearchPageState extends State<EpisodeSearchPage> {
  late Episode
      _currentEpisode; //para almacenar toda la info sobre el total de páginas y personajes y devolverá el tipo de personaje, es decir, nuestro modelo.
  List<Results> _currentResults = []; //almacena matriz de personajes

  int _currentPage = 1; //para la paginación
  String _currentSearchStr = '';

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<EpisodeBloc>()
          .add(const EpisodeEvent.fetch(name: '', page: 1));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EpisodeBloc>().state;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Episodes'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  title: 'Rick and Morty',
                ),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 1, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
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
                hintText: 'Search Episode',
                hintStyle: const TextStyle(color: Colors.white),
              ),
              onChanged: (value) {
                _currentPage = 1;
                _currentResults = [];
                _currentSearchStr = value;

                context
                    .read<EpisodeBloc>()
                    .add(EpisodeEvent.fetch(name: value, page: 1));
              },
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
                loaded: (episodeLoaded) {
                  _currentEpisode = episodeLoaded;
                  _currentResults = _currentEpisode.results;
                  return _currentResults.isNotEmpty
                      ? _customListView(_currentResults)
                      : const SizedBox(
                          height: 10,
                        );
                },
                error: () => const Text('Nothing found...'),
              ),
            ),
          ],
        ),
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
              //esto deberia ser un evento:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EpisodeDetail(result: result),
                ),
              );
            },
            child: EpisodeCustomListTile(result: result),
          ),
        );
      },
    );
  }
}
