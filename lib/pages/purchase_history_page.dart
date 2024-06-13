import 'package:flutter/material.dart';

class PurchaseHistoryPage extends StatelessWidget {
  const PurchaseHistoryPage({super.key, required Null Function() onTap});

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
                            PurchaseHistoryPage(onTap: () {}),
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
                  "Gift Card Oreder History",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 110,
                ),
              ],
            ),
          ),
        ),
      ),
      body:  Column(
        children: [
          Padding(
                padding: const EdgeInsets.only(top:  20, left: 60, right: 15),
                child: Container(
                      height: 280,
                      width: 280,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/Purchase.png"), fit: BoxFit.fitHeight),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),),
                    const SizedBox(height: 20,),
                     Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text("You haven't purchased any gift cards yet", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 15, fontWeight: FontWeight.w500),),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: Text("Buy now", style: TextStyle(color: Colors.greenAccent, fontSize: 15, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}