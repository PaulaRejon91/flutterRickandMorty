import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/ui/pages/home_page.dart';

import 'bloc/character_bloc.dart';
import 'bloc/episodeList_bloc.dart';
import 'data/repositories/repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = Repository();
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displaySmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      // home: HomePage(title: 'Rick and Morty'),
      home: MultiBlocProvider(providers: [
        BlocProvider<CharacterBloc>(
          create: (context) => CharacterBloc(characterRepo: repository),
        ),
        BlocProvider<EpisodeListBloc>(
          create: (context) => EpisodeListBloc(episodeListRepo: repository),
        ),
      ], child: HomePage(title: 'Rick and Morty')),
    );
  }
}
