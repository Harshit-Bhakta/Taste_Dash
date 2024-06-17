import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GiftCardsPage extends StatelessWidget {
  const GiftCardsPage({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.0),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25))),
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
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  GiftCardsPage(onTap: () {}),
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
                    "Customize Gift Cards",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Icon(Icons.chat, size:20,color: Colors.white),
                  const SizedBox(width: 5,),
                  Text(
                    "FAQs",
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5, top: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'All',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Birthday',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Anniversary',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Wedding',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Get well soon',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Promotion',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Thank you',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Sorry',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    )),
                                child: const Center(
                                  child: Text(
                                    'Others',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
            ],
          ),
        ),
        );
  }
}
