import 'package:flutter/material.dart';

class GiftCardPage extends StatelessWidget {
  const GiftCardPage({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.0),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Row(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 20,
                  ),
                  onTap: () {
                    Navigator.pop(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            GiftCardPage(onTap: () {}),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset(0.0, 0.0);
                          const curve = Curves.easeInOut;

                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Claim Gift Balance",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 110,),
                Text("FAQs", style: TextStyle(color: Colors.greenAccent, fontSize: 17, fontWeight: FontWeight.w500),)
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 15, right: 15),
        child: Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.deepPurple.shade400,
                    Colors.deepPurple.shade700
                  ], begin: Alignment.centerRight, end: Alignment.centerLeft)
          ),
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black,Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(15)
            ),
          ),
        ),
      ),
    );
  }
}