import 'package:flutter/material.dart';
import 'package:gallery_app/screens/home/provider/home_provider.dart';
import 'package:gallery_app/screens/home/view/home_view.dart';
import 'package:gallery_app/screens/photo/provider/photo_provider.dart';
import 'package:gallery_app/screens/photo/view/photo_page_view.dart';
import 'package:gallery_app/screens/profile/view/profile_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeView(),
          'profile':(context) => ProfileView(),
          'photo':(context) => PhotoPageView(),
        },
      ),
    ),
  );
}
