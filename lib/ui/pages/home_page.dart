import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/episodeList_bloc.dart';
import 'package:rickandmorty/ui/pages/search_page.dart';
import '../../bloc/character_bloc.dart';
import '../../data/repositories/repository.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.title});
  final String title;
  final repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CharacterBloc>(
            create: (context) => CharacterBloc(characterRepo: repository),
          ),
          BlocProvider<EpisodeListBloc>(
            create: (context) => EpisodeListBloc(episodeListRepo: repository),
          ),
        ],
        child: Container(
            decoration: const BoxDecoration(color: Colors.black87),
            child: const SearchPage()),
      ),
    );
  }
}
