import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;
  const MyDrawerTile({super.key, required this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
      ),
      leading: Icon(icon, color: Colors.white,),
      onTap: onTap,
    );
  }
}
