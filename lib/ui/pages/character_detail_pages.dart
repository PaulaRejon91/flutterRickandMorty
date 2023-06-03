import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../data/models/character.dart';

final user = FirebaseAuth.instance.currentUser;

class CharacterDetail extends StatefulWidget {
  final Results result;

  const CharacterDetail({Key? key, required this.result}) : super(key: key);

  @override
  State<CharacterDetail> createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    clickFavorite();
  }

  void clickFavorite() async {
    final docSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .collection('favorites')
        .doc(widget.result.id.toString())
        .get();

    setState(() {
      isFavorite = docSnapshot.exists;
    });
  }

  void favorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        FirebaseFirestore.instance
            //guardar:
            .collection('users')
            .doc(user!.uid)
            .collection('favorites')
            .doc(widget.result.id.toString())
            .set({
          'name': widget.result.name,
          'image': widget.result.image,
          'status': widget.result.status,
          'species': widget.result.species,
          'gender': widget.result.gender,
        });
      } else {
        //Eliminar:
        FirebaseFirestore.instance
            .collection('users')
            .doc(user!.uid)
            .collection('favorites')
            .doc(widget.result.id.toString())
            .delete();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.result.name),
        backgroundColor: Colors.green,
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
                  image: NetworkImage(widget.result.image),
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Name: ${widget.result.name}',
              style: const TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Status: ${widget.result.status}',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Species: ${widget.result.species}',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Gender: ${widget.result.gender}',
              style: const TextStyle(fontSize: 20.0),
            ),
            GestureDetector(
              onTap: favorite,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, top: 18),
                child: Icon(
                  Icons.favorite,
                  size: 40,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import '../../data/models/character.dart';

// final user = FirebaseAuth.instance.currentUser;

// class CharacterDetail extends StatefulWidget {
//   final Results result;

//   const CharacterDetail({Key? key, required this.result}) : super(key: key);

//   @override
//   State<CharacterDetail> createState() => _CharacterDetailState();
// }

// class _CharacterDetailState extends State<CharacterDetail> {
//   bool isFavorite = false;

//   @override
//   void initState() {
//     super.initState();
//     checkFavorite();
//   }

//   void checkFavorite() async {
//     final docSnapshot = await FirebaseFirestore.instance
//         .collection('users') 
//         .doc(user!.uid)
//         .collection('favorites')
//         .doc(widget.result.toString())
//         .get();

//     setState(() {
//       isFavorite = docSnapshot.exists;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.result.name),
//       ),
//       body: Padding(
//         return: StreamBuilder<QuerySnapshot>(
//           stream: //escuchar para q sepa bbdd ,
//           builder:(context, snapshot) {          
            
          
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: double.infinity,
//               height: 200,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: NetworkImage(widget.result.image),
//                 ),
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Text(
//               'Name: ${widget.result.name}',
//               style: const TextStyle(
//                 fontSize: 27.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               'Status: ${widget.result.status}',
//               style: const TextStyle(fontSize: 20.0),
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               'Species: ${widget.result.species}',
//               style: const TextStyle(fontSize: 20.0),
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               'Gender: ${widget.result.gender}',
//               style: const TextStyle(fontSize: 20.0),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   isFavorite = !isFavorite;
//                   if (isFavorite) {
                 
//                     FirebaseFirestore.instance
//                         .collection('users')
//                         .doc(user!.uid)
//                         .collection('favorites')
//                         .doc(widget.result.toString())
//                         .set({});
//                   } else {
                    
//                     FirebaseFirestore.instance
//                         .collection('users')
//                         .doc(user!.uid)
//                         .collection('favorites')
//                         .doc(widget.result.toString())
//                         .delete();
//                   }
//                 });
//               },
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 16),
//                 child: Icon(
//                   Icons.favorite,
//                   size: 30,
//                   color: isFavorite ? Colors.red : Colors.grey,
//                 ),
//               ),
//             ),
//           ],
//         );
//   },),
//       ),
//     );
//   }
// }
