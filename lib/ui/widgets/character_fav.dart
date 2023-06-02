import 'package:flutter/material.dart';
// si pulso icono fav, guardar el personaje y que se muestre en la pantalla favoritos

class CharacterFav extends StatefulWidget {
  const CharacterFav({super.key});

  @override
  State<CharacterFav> createState() => _CharacterFavState();
}

class _CharacterFavState extends State<CharacterFav> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.favorite_border,
          size: 25,
          color: Colors.white,
        ),
        SizedBox(
          width: 6,
        ),
      ],
    );
  }
}
