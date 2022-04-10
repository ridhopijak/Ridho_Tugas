import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.perm_identity,
              text: 'Profil',
              onTap: () {
                Navigator.pushNamed(context, '/Profil');
              }),
          _drawerItem(
              icon: Icons.person_outline,
              text: 'Portofolio',
              onTap: () {
                Navigator.pushNamed(context, '/portofolio');
              }),
          _drawerItem(
              icon: Icons.people,
              text: 'Contact Us',
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              }),
          Divider(height: 25, thickness: 1),
          _drawerItem(
              icon: Icons.settings,
              text: 'Setting',
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              }),
          _drawerItem(
              icon: Icons.photo_library,
              text: 'Galeri',
              onTap: () {
                Navigator.pushNamed(context, '/Galeri');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/ridho.jpeg'), fit: BoxFit.cover),
    ),
    accountName: Text('Ridho Pijak Imana'),
    accountEmail: Text('ridhopjk12@gmail.com'),
  );
}

Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class Kontak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Contact", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text("data"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Name", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Email", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    maxLines: 7,
                    decoration: InputDecoration(filled: true, hintText: "Message", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    color: Color(0xff333333),
                    onPressed: () {},
                    child: Text("SUBMIT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
