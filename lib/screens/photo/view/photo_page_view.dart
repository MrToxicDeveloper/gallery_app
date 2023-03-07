import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/photo_provider.dart';

class PhotoPageView extends StatefulWidget {
  const PhotoPageView({Key? key}) : super(key: key);

  @override
  State<PhotoPageView> createState() => _PhotoPageViewState();
}

class _PhotoPageViewState extends State<PhotoPageView> {
  PhotoProvider? photoProvider;

  int? index1;

  @override
  Widget build(BuildContext context) {
    index1 = ModalRoute.of(context)!.settings.arguments as int;
    photoProvider = Provider.of<PhotoProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Images"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView.builder(
            controller: PageController(initialPage: index1!),
            itemCount: photoProvider!.photo.length,
            itemBuilder: (context, index) {
              return Image.asset("${photoProvider!.photo[index]}");
            },
          ),
        ),
      ),
    );
  }
}
