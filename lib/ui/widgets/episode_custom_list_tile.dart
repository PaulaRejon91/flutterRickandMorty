import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/episode.dart';

class EpisodeCustomListTile extends StatelessWidget {
  final Results result;

  const EpisodeCustomListTile({Key? key, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //tamaño de la pantalla: Puedes obtener el tamaño de la pantalla actual utilizando MediaQuery.of(context).size. Esto devuelve un objeto Size que contiene las dimensiones de la pantalla, como el ancho y el alto.
    return ClipRRect(
      //Cuando se envuelve un widget con ClipRect, el contenido del widget hijo se ajusta al rectángulo especificado y cualquier parte que se extienda más allá de ese rectángulo se recorta y no se muestra en la interfaz de usuario.
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: MediaQuery.of(context).size.height / 9,
        color: const Color.fromRGBO(86, 86, 86, 0.8), //GRIS,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    result.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.black, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        //width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name: ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Colors.white, fontSize: 16),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  result.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        //width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Episode: ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Colors.white, fontSize: 16),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  result.episode,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
