import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/ui/pages/episode_list_page.dart';
import '../../bloc/episodeList_bloc.dart';
import '../../data/repositories/repository.dart';

class EpisodeMainPage extends StatelessWidget {
  EpisodeMainPage({super.key, required this.episodeIntList});
  final repository = Repository();
  final List<int> episodeIntList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Episode List')),
      body: BlocProvider(
        create: (BuildContext context) =>
            EpisodeListBloc(episodeListRepo: repository),
        child: const EpisodeListPage(),
      ),
    );
  }
}
