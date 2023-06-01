import 'package:flutter/material.dart';
import '../../data/repositories/repository.dart';
import 'episode_search_page.dart';

class EpisodeMainPage extends StatelessWidget {
  EpisodeMainPage({super.key});
  final repository = Repository();

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: EpisodeSearchPage(),
    );

    //  return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('App bar Main'),
    //     ),
    //     body: BlocProvider(
    //       create: (BuildContext context) => EpisodeBloc(episodeRepo: repository),
    //       child: const EpisodeSearchPage(),
    //     ),
    //   );
  }
}
