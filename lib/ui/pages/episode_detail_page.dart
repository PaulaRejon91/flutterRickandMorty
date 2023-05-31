import 'package:flutter/material.dart';

import '../../data/models/episode.dart';

class EpisodeDetailPage extends StatelessWidget {
  final Episode result;

  const EpisodeDetailPage({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hola'),
      ),
      body: const Center(
        child: Text('bodyyy'),
      ),
    );
  }
}



  /*final int  episodeDetail;

  const EpisodeDetailPage({Key? key, required this.episodeDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episods'),
      ),
      body: Center(
        child: Text('Episode: $episodeDetail'),
      ),
    );
  }*/

