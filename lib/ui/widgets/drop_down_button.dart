import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/episodeList_bloc.dart';
import '../pages/episodeListPage.dart';

const List<String> list = <String>[
  'Season 1',
  'Season 2',
  'Season 3',
  'Season 4',
  'Season 5',
];

final List<int> season1List = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; //1 al 11
final List<int> season2List = [
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20
]; //12 al 21
final List<int> season3List = [
  21,
  22,
  23,
  24,
  25,
  26,
  27,
  28,
  29,
  30
]; //22 al 31
final List<int> season4List = [
  31,
  32,
  33,
  34,
  35,
  36,
  37,
  38,
  39,
  40
]; //32 al 41
final List<int> season5List = [
  41,
  42,
  43,
  44,
  45,
  46,
  47,
  48,
  49,
  50
]; //42 al 51

class DropDownButton extends StatefulWidget {
  final int selectedIndex; // Índice de la lista de temporadas
  const DropDownButton({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
        switch (widget.selectedIndex) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EpisodeListPage(episodeList: season1List),
              ),
            );
            break;
          case 1:
            context
                .read<EpisodeListBloc>()
                .add(EpisodeListEvent.fetch(episodeList: season2List));
            break;
          case 2:
            context
                .read<EpisodeListBloc>()
                .add(EpisodeListEvent.fetch(episodeList: season3List));
            break;
          case 3:
            context
                .read<EpisodeListBloc>()
                .add(EpisodeListEvent.fetch(episodeList: season4List));
            break;
          case 4:
            context
                .read<EpisodeListBloc>()
                .add(EpisodeListEvent.fetch(episodeList: season5List));
            break;

          default:
            // Lógica para casos adicionales, si es necesario
            break;
        }
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}