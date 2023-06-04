import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/episode.dart';

class EpisodeCustomListTile extends StatelessWidget {
  final Results result;

  const EpisodeCustomListTile({Key? key, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //Cuando se envuelve un widget con ClipRect, el contenido del widget hijo se ajusta al rectángulo especificado y cualquier parte que se extienda más allá de ese rectángulo se recorta y no se muestra en la interfaz de usuario.
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: MediaQuery.of(context).size.height / 19,
        color: const Color.fromRGBO(86, 86, 86, 0.8), //GRIS,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nº  ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${result.episode}   ',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      result.name,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
