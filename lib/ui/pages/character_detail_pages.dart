import 'package:flutter/material.dart';
import '../../data/models/character.dart';

class CharacterDetail extends StatelessWidget {
  final Results result;

  const CharacterDetail({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(result.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(result.image),
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Name: ${result.name}',
              style: const TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Status: ${result.status}',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Species: ${result.species}',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Gender: ${result.gender}',
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
