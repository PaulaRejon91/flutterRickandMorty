import 'package:flutter/material.dart';

class EpisodeListPage extends StatelessWidget {
  final List<int> episodeList;

  const EpisodeListPage({Key? key, required this.episodeList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episode List'),
      ),
      body: ListView.builder(
        itemCount: episodeList.length,
        itemBuilder: (context, index) {
          final episodeNumber = episodeList[index];
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
              },
            ),
          );
        },
      ),
    );
  }
}
