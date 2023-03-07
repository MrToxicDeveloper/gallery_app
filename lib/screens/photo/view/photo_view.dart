import 'package:flutter/material.dart';
import 'package:gallery_app/screens/photo/provider/photo_provider.dart';
import 'package:provider/provider.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({Key? key}) : super(key: key);

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  PhotoProvider? photoProvider;

  @override
  Widget build(BuildContext context) {
    photoProvider = Provider.of<PhotoProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Images"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: photoProvider!.photo.length,
            itemBuilder: (context, index) {
              return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'photo',arguments: index);
              },
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 100,
                  width: 100,
                  child: Image.asset("${photoProvider!.photo[index]}"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
