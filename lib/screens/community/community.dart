import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyCommunityPost extends StatefulWidget {
  const MyCommunityPost({Key? key}) : super(key: key);

  @override
  State<MyCommunityPost> createState() => _MyCommunityPostState();
}

class _MyCommunityPostState extends State<MyCommunityPost> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'Tb9k9_Bo-G4',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        isLive: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Community"),
      ),
      body: ListView.builder(
        itemCount: videoList.length,
        itemBuilder: (context, index) {
          final video = videoList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerPage(video: video),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(video.thumbnailUrl),
                  ListTile(
                    title: Text(video.title),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Video {
  final String title;
  final String videoId;
  final String thumbnailUrl;

  Video({
    required this.title,
    required this.videoId,
    required this.thumbnailUrl,
  });
}

class VideoPlayerPage extends StatelessWidget {
  final Video video;

  const VideoPlayerPage({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: video.videoId,
            flags: const YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
              isLive: false,
            ),
          ),
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: const ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: Text(video.title),
            ),
            body: player,
          );
        },
      ),
    );
  }
}

List<Video> videoList = [
  Video(
    title: 'Potato cultivation',
    videoId: 'f9HZR3aM0IQ',
    thumbnailUrl: 'https://img.youtube.com/vi/f9HZR3aM0IQ/mqdefault.jpg',
  ),
  Video(
    title: 'cultivation of cotton',
    videoId: 'v4Cyr6L2X1o',
    thumbnailUrl: 'https://img.youtube.com/vi/v4Cyr6L2X1o/mqdefault.jpg',
  ),
  Video(
    title: 'Scientific method of litchi cultivation',
    videoId: '71a0NxBxUQ0',
    thumbnailUrl: 'https://img.youtube.com/vi/71a0NxBxUQ0/mqdefault.jpg',
  ),
  Video(
    title: 'Greenhouse vegetable cultivation',
    videoId: '8fWSfEBGobI',
    thumbnailUrl: 'https://img.youtube.com/vi/8fWSfEBGobI/mqdefault.jpg',
  ),
  Video(
    title: 'tomato cultivation',
    videoId: 'xAen0DIotSc',
    thumbnailUrl: 'https://img.youtube.com/vi/xAen0DIotSc/mqdefault.jpg',
  ),
  Video(
    title: 'saffron cultivation',
    videoId: '1opWKy4wENw',
    thumbnailUrl: 'https://img.youtube.com/vi/1opWKy4wENw/mqdefault.jpg',
  ),
  Video(
    title: 'cucumber cultivation',
    videoId: 'OzGudoy7keA',
    thumbnailUrl: 'https://img.youtube.com/vi/OzGudoy7keA/mqdefault.jpg',
  ),
  Video(
    title: 'Bamboo farming',
    videoId: 'OaMy-qVFDss',
    thumbnailUrl: 'https://img.youtube.com/vi/OaMy-qVFDss/mqdefault.jpg',
  ),
  Video(
    title: 'Chilly Farming',
    videoId: '6C0ZR_p0wRc',
    thumbnailUrl: 'https://img.youtube.com/vi/6C0ZR_p0wRc/mqdefault.jpg',
  ),
  Video(
    title: 'Proper Peas Farming',
    videoId: 'EB4btT6ONBg',
    thumbnailUrl: 'https://img.youtube.com/vi/EB4btT6ONBg/mqdefault.jpg',
  ),
  Video(
    title: 'How to use fertilizers properly',
    videoId: 'SVYQGPIbzNE',
    thumbnailUrl: 'https://img.youtube.com/vi/SVYQGPIbzNE/mqdefault.jpg',
  ),
  Video(
    title: 'Best Business Ideas in agriculture',
    videoId: '9_Q4RBTd3ws',
    thumbnailUrl: 'https://img.youtube.com/vi/9_Q4RBTd3ws/mqdefault.jpg',
  ),
];
