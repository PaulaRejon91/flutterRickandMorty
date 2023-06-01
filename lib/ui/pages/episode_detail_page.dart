import 'package:flutter/material.dart';

import '../../data/models/episode.dart';

class EpisodeDetail extends StatelessWidget {
  final Results result;

  const EpisodeDetail({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(result.name),
      ),
      body: Text(result.name),
    );
  }
}


//si lo hago directamente tengo q hacer statefull


