import 'package:flutter/material.dart';
import 'package:gallery_app/screens/home/provider/home_provider.dart';
import 'package:gallery_app/screens/photo/view/photo_view.dart';
import 'package:gallery_app/screens/profile/view/profile_view.dart';
import 'package:gallery_app/screens/video/view/video_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeProvider? homeProvider;
  HomeProvider? liveUpdate;

  List screen = [PhotoView(), ProfileView(), VideoView()];

  @override
  Widget build(BuildContext context) {
    homeProvider = Provider.of<HomeProvider>(context, listen: false);
    liveUpdate = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          currentIndex: liveUpdate!.i,
          onTap: (value) {
            homeProvider!.select(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_media), label: 'Photos'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_back_rounded), label: 'Videos'),
          ],
        ),
        body: screen[liveUpdate!.i],
      ),
    );
  }
}
