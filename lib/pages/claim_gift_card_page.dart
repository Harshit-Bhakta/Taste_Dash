import 'package:flutter/material.dart';

class ClaimGiftCardPage extends StatelessWidget {
  const ClaimGiftCardPage({super.key, required Null Function() onTap});

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
                            ClaimGiftCardPage(onTap: () {}),
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
                  "Claim Gift Card",
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
            padding: const EdgeInsets.only(top:  20, left: 15, right: 15),
            child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/GiftCard.png"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 330),
            child: Text("NOTE", style: TextStyle(color: const Color.fromARGB(255, 105, 240, 217), fontSize: 15, fontWeight: FontWeight.w400),),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text("●", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 10,),
                Text('Gift card amount will have the same expiry date as that of\nthe gift card', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("●", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 10,),
                Text('This balance can be easily used at checkout', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),)
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 5,left: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("●", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 10,),
                Text('Claimed gift card cannot be transferred to another account', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),)
              ],
            ),
          ),
        ],
      ),
     bottomNavigationBar: SizedBox(
  height: 110, 
  child: BottomAppBar(
    color: Color.fromARGB(255, 0, 0, 0),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(children: [
                   Text('By continuing, you agree to our',
                        style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(width: 5,),
                         Text('terms & conditions',
                     style: TextStyle(color: Colors.greenAccent, fontSize: 13, fontWeight: FontWeight.normal),
                        ),
              ],),
            ),
            const SizedBox(height: 15,),
            Container(
              child: Center(
                child: Text(
                  "Claim", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              height: 50,
              width: 420,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 45, 225, 222), 
                    Color.fromARGB(255, 44, 249, 225)
                  ],
                  stops: [0.2, 0.7],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
),

    );
  }
}