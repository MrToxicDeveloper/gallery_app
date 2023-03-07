import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Profile"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 100,
                      backgroundImage: AssetImage("assets/images/Deadpool.jpg")),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: Deadpool",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("Proffesion: Anti-Hero",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("Age: 27",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("Kills: 100+",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("Powers: Regenration",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
