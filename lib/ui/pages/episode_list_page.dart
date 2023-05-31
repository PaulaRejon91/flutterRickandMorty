import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/episodeList_bloc.dart';
import '../../data/models/episodeList.dart';

class EpisodeListPage extends StatefulWidget {
  const EpisodeListPage({Key? key}) : super(key: key);

  @override
  State<EpisodeListPage> createState() => _EpisodeListPageState();
}

class _EpisodeListPageState extends State<EpisodeListPage> {
  late EpisodeList episodeList;

  // @override
  // void initState() {
  //   if (episodeList.episodeList.isEmpty) {
  //     context
  //         .read<EpisodeListBloc>()
  //         .add(EpisodeListEvent.fetch(episodeList: [1, 2]));
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EpisodeListBloc>().state;
    context
        .read<EpisodeListBloc>()
        .add(EpisodeListEvent.fetch(episodeList: [1, 2]));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
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
            loaded: (episodeListLoaded) {
              episodeList = episodeListLoaded;
              return ListView.builder(
                  itemCount: episodeList.episodeList.length,
                  itemBuilder: (context, index) {
                    final episodeNumber = index + 1;
                    return Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.abc,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Episode $episodeNumber',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          'dESCRIPCION',
                        ),
                        onTap: () {
                          // Lógica cuando se toca un episodio

                          // final repository = Repository();
                          // repository.getEpisodeById().then((episode) {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => EpisodeDetailPage(episode: episode),
                          //     ),
                          //   );
                          // }).catchError((error) {});
                        },
                      ),
                    );
                  });
            },
            error: () => const Text('Nothing found...'),
          ),
        ),
      ],
    );
  }
}
