import 'package:flutter/material.dart';

import '../../data/models/episode.dart';

class EpisodeDetailPage extends StatelessWidget {
  final Episode episode;

  const EpisodeDetailPage({required this.episode, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del episodio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${episode.id}'),
            Text('Name: ${episode.name}'),
            Text('Air Date: ${episode.airDate}'),
            Text('Episode: ${episode.episode}'),
            Text('Characters: ${episode.characters.join(", ")}'),
            Text('URL: ${episode.url}'),
            Text('Created: ${episode.created}'),
          ],
        ),
      ),
    );
  }
}
