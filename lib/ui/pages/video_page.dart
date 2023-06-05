import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final videoURL = "https://www.youtube.com/watch?v=vfi-fru6kC4";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId((videoURL));
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'The best Rick phrases!',
          ),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            )
          ],
        ));
  }
}






// class VideoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String videoId =
//         "https://www.youtube.com/watch?v=vfi-fru6kC4"; // Reemplaza con el ID del video de YouTube

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reproductor de YouTube'),
//       ),
//       body: Center(
//         child: YoutubePlayer(
//           controller: YoutubePlayerController(
//             initialVideoId: videoId,
//             flags: YoutubePlayerFlags(
//               autoPlay: true,
//               mute: false,
//             ),
//           ),
//           showVideoProgressIndicator: true,
//           progressIndicatorColor: Colors.amber,
//         ),
//       ),
//     );
//   }
// }
