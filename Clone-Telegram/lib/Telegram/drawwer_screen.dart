import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawerscreen extends StatefulWidget {
  const drawerscreen({Key? key}) : super(key: key);

  @override
  _drawerscreenState createState() => _drawerscreenState();
}

class _drawerscreenState extends State<drawerscreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Wahyu Rizqy Saputra"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/img/twibbon.png"),
          ),
          accountEmail: Text("Wahyu@gmail.com"),
        ),
        DrawwerListTile(
          iconData: Icons.group,
          title: "New Group",
          onTilePressed: () {},
        ),
        DrawwerListTile(
          iconData: Icons.lock,
          title: "New Secret Group",
          onTilePressed: () {},
        ),
        DrawwerListTile(
          iconData: Icons.notifications,
          title: "New Channel Chat",
          onTilePressed: () {},
        ),
        DrawwerListTile(
          iconData: Icons.contacts,
          title: "contact",
          onTilePressed: () {},
        ),
        DrawwerListTile(
          iconData: Icons.bookmark_border,
          title: "Saved Messages",
          onTilePressed: () {},
        ),
        DrawwerListTile(
          iconData: Icons.phone,
          title: "Phone",
          onTilePressed: () {},
        )
      ],
    ));
  }
}

class DrawwerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawwerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
