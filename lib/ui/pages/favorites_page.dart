import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(user!.uid)
            .collection('favorites')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final favorites = snapshot.data!.docs;

            if (favorites.isEmpty) {
              return const Center(
                child: Text('No favorites yet.'),
              );
            }

            return ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final favorite = favorites[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: 300, // Ajusta el ancho del contenedor
                    height: 150, // Ajusta la altura del contenedor
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 120, // Ajusta el ancho de la imagen
                          height: 150, // Ajusta la altura de la imagen
                          child: Image.network(
                            favorite['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                            width:
                                10), // Agrega espacio entre la imagen y el texto
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              favorite['name'],
                              style: const TextStyle(
                                fontSize:
                                    18, // Ajusta el tamaño del texto del nombre
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                                height:
                                    6), // Agrega espacio entre el nombre y el género
                            Text(
                              favorite['gender'],
                              style: const TextStyle(
                                  fontSize:
                                      16), // Ajusta el tamaño del texto del género
                            ),
                            Text(
                              favorite['species'],
                              style: const TextStyle(
                                  fontSize:
                                      16), // Ajusta el tamaño del texto de la especie
                            ),
                            Text(
                              favorite['status'],
                              style: const TextStyle(
                                  fontSize:
                                      16), // Ajusta el tamaño del texto de la especie
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
