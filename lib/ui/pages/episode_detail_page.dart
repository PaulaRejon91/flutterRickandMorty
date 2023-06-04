import 'package:flutter/material.dart';

import '../../data/models/episode.dart';

class EpisodeDetail extends StatelessWidget {
  final Results resultEpisode;

  const EpisodeDetail({Key? key, required this.resultEpisode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          resultEpisode.name,
          style: const TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Episode: ${resultEpisode.episode}',
              style: const TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Air Date: ${resultEpisode.airDate}',
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16.0),
            // const Text(
            //   'Characters:',
            //   style: TextStyle(
            //     fontSize: 20.0,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.black,
            //   ),
            // ),
            // const SizedBox(height: 8.0),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: resultEpisode.characters.length,
            //     itemBuilder: (context, index) {
            //       final character = resultEpisode.characters[index];
            //       return Text(
            //         character,
            //         style: const TextStyle(
            //           fontSize: 16.0,
            //           color: Colors.black,
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // const SizedBox(height: 16.0),
            Text(
              'Created: ${resultEpisode.created.toString()}',
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16.0),
            // Image.asset(
            //   'assets/image.png',
            //   width: 200,
            //   height: 200,
            //   fit: BoxFit.cover,
            // ),
          ],
        ),
      ),
    );
  }
}
