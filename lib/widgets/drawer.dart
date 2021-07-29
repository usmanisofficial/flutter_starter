import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final String imageURL =
      "https://avatars.githubusercontent.com/u/44544860?s=400&u=9aae942cafd79c7ccf442d3f8522c74b674c1b06&v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: const EdgeInsets.all(0),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  ),
                  accountName: Text("Muhammad Usman"),
                  accountEmail: Text("usmanisofficial@outlook.com"),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              tileColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              tileColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                Icons.support_sharp,
                color: Colors.white,
              ),
              title: Text(
                "Support",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              tileColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
