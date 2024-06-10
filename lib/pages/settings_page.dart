import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/HomePage.png'),fit: BoxFit.cover,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text('S E T T I N G S'),
      titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 20,
      fontWeight: FontWeight.w500),
      centerTitle: true,
      elevation: 5,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
      leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 30,
              color: Color.fromARGB(255, 255, 255, 255),
              );
        }),
      ),
    );
  }
}