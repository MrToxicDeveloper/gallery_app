import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../photo/provider/photo_provider.dart';

class VideoView extends StatefulWidget {
  const VideoView({Key? key}) : super(key: key);

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  PhotoProvider? photoProvider;

  @override
  Widget build(BuildContext context) {
    photoProvider = Provider.of<PhotoProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Video"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("${photoProvider!.photo[index]}")),
              title: Text("${photoProvider!.Name[index]}"),
              subtitle: Text("   "),
              trailing: Icon(Icons.play_circle),
            ),
          ),
        ),
      ),
    );
  }
}
