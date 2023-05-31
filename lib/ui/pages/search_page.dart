// ignore_for_file: unused_field
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/ui/widgets/custom_list_tile.dart';
import '../../bloc/character_bloc.dart';
import '../../data/models/character.dart';
import '../widgets/drop_down_button.dart';
import 'character_detail_pages.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Character
      _currentCharacter; //para almacenar toda la info sobre el total de páginas y personajes y devolverá el tipo de personaje, es decir, nuestro modelo.
  List<Results> _currentResults = []; //almacena matriz de personajes

  int _currentPage = 1; //para la paginación
  String _currentSearchStr = '';

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<CharacterBloc>()
          .add(const CharacterEvent.fetch(name: '', page: 1));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharacterBloc>().state;

    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 1, left: 16, right: 16),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(86, 86, 86, 0.8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              hintText: 'Search Name',
              hintStyle: const TextStyle(color: Colors.white),
            ),
            onChanged: (value) {
              //buscar personaje:
              _currentPage = 1; //empezamos desde la 1ª pag.
              _currentResults = [];
              _currentSearchStr = value;

              context
                  .read<CharacterBloc>()
                  .add(CharacterEvent.fetch(name: value, page: 1));
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: DropDownButton(
            selectedIndex: 0,
          ),
        ),

        //envuelvo con widget:
        Expanded(
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
            loaded: (characterLoaded) {
              _currentCharacter = characterLoaded;
              _currentResults = _currentCharacter.results;
              return _currentResults.isNotEmpty
                  ? _customListView(_currentResults)
                  : const SizedBox(
                      height: 10,
                    );
            },
            error: () => const Text('Nothing found...'),
          ),
        ),
      ],
    );

    /* return BlocBuilder(
      builder: (context, state) {
        if (state is CharacterStateLoading) {
          //
        } else if (state is CharacterStateLoaded) {}
      },
    );*/
  }

  Widget _customListView(List<Results> currentResults) {
    return ListView.separated(
      itemCount: currentResults.length,
      separatorBuilder: (_, index) => const SizedBox(height: 5),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final result = currentResults[index];
        return Padding(
          padding:
              const EdgeInsets.only(right: 16, left: 16, top: 3, bottom: 3),
          child: GestureDetector(
            onTap: () {
              //esto deberia ser un evento:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetail(result: result),
                ),
              );
            },
            child: CustomListTile(result: result),
          ),
        );
      },
    );
  }
}
