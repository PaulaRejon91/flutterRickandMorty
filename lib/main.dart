import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/episode_bloc.dart';
import 'package:rickandmorty/ui/pages/home_page.dart';
import 'package:rickandmorty/ui/pages/loginAndRegister/login_page.dart';
import 'package:rickandmorty/ui/pages/loginAndRegister/register_page.dart';
import 'package:rickandmorty/ui/pages/loginAndRegister/verifyEmail_page.dart';
import 'package:rickandmorty/ui/pages/search_page.dart';
import 'bloc/character_bloc.dart';
import 'constants/routes.dart';
import 'data/repositories/repository.dart';

void main() async {
  final repository = Repository();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CharacterBloc>(
          create: (BuildContext context) =>
              CharacterBloc(characterRepo: repository),
        ),
        BlocProvider<EpisodeBloc>(
          create: (BuildContext context) =>
              EpisodeBloc(episodeRepo: repository),
        ),
      ],
      child: MaterialApp(
        title: 'Rick and Morty',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(
          title: 'Rick and Morty',
        ),
        routes: {
          loginRoute: (context) => const LoginView(),
          searchRoute: (context) => const SearchPage(),
          registerRoute: (context) => const RegisterView(),
          verifyEmailRoute: (context) => const VerifyEmailView(),
          // favoritesRoute: (context) => const FavoritesPage(),
        },
      ),
    ),
  );
}

















// void main() {
//   final repository = Repository();
//   runApp(
//     MultiBlocProvider(providers: [
//       BlocProvider<CharacterBloc>(
//         create: (BuildContext context) =>
//             CharacterBloc(characterRepo: repository),
//       ),
//       BlocProvider<EpisodeBloc>(
//         create: (BuildContext context) => EpisodeBloc(episodeRepo: repository),
//       ),
//     ], child: const MyApp()),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Rick and Morty',
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primaryColor: Colors.black,
//         fontFamily: 'Georgia',
//         textTheme: const TextTheme(
//           displaySmall: TextStyle(
//               fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
   
//       home: HomePage(title: 'Rick and Morty'),

//     );
//   }
// }
