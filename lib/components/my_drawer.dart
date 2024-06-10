import 'package:flutter/material.dart';
import 'package:food_app/components/my_drawer_tile.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 3, 22, 48),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100, right: 20),
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/Drawer.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Colors.white,
              height: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: MyDrawerTile(
              text: "H O M E",
              icon: Icons.home_filled,
              onTap: () => Navigator.pop(context),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
            ),
          ),
          const SizedBox(height: 400),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.logout_outlined,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage(onTap: () { },)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
