import 'dart:js';

import 'package:flutter/material.dart';

import '../../bloc/episodeList_bloc.dart';
import '../../data/models/episodeList.dart';
import 'episode_detail_page.dart';

class EpisodeListPage extends StatelessWidget {
  final EpisodeList episodes;

  const EpisodeListPage({Key? key, required this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episode List'),
      ),
      body: ListView.builder(
        itemCount: episodes.episodeList.length,
        itemBuilder: (context, index) {
          final episodeNumber = index + 1;
          return Card(
            child: ListTile(
              leading: const Icon(
                Icons.abc,
              ),
              title: Text(
                'Episode $episodeNumber',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text("name"),
              onTap: () {
                // Lógica cuando se toca un episodio

                /*final episodeDetail = episodes.episodeList[index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        EpisodeDetailPage(episodeDetail: episodeDetail),
                  ),
                );*/
              },
            ),
          );
        },
      ),
    );
  }
}
