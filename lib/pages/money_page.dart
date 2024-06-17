import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/claim_gift_card_page.dart';
import 'package:food_app/pages/gift_card_page.dart';
import 'package:food_app/pages/gift_cards_pages.dart';
import 'package:food_app/pages/location_page.dart';
import 'package:food_app/pages/purchase_history_page.dart';
import 'package:food_app/pages/wallet_page.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 10, 0, 42),
                Color.fromARGB(255, 17, 3, 76),
                Color.fromARGB(255, 18, 4, 84)
              ], stops: [
                0.3,
                0.9,
                1
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 45),
                child: Row(
                  children: [
                   const Icon(Icons.location_on_outlined,
                        size: 38, color: Colors.white),
                    const SizedBox(
                      width: 5,
                    ),
                     const Column(
                      children: [
                        Text(
                          "Bagdogra",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            "India",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                    Padding(
                       padding: const EdgeInsets.only(bottom: 20),
                       child: GestureDetector(
                       child: const Icon(
                       Icons.keyboard_arrow_down_outlined,
                       color: Colors.white,
                       size: 25,
                       ),
                        onTap: () {
                                 Navigator.push(
                                 context,
                                 PageRouteBuilder(
                                           transitionDuration: const Duration(milliseconds: 500),
                                         pageBuilder: (context, animation, secondaryAnimation) => LocationPage(onTap: () {}),
                                       transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                 const begin = Offset(0.0, 1.0); 
                                const end = Offset(0.0, 0.0);
                                    const curve = Curves.easeInOut;

                                   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
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
                           ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "M O N E Y",
                style: TextStyle(
                    color: Color.fromARGB(198, 255, 255, 255),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 150),
          child: Column(children: [
            Container(
              width: 400,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade700],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                )
              ),
               child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left:20, top: 15, right: 0),
                           child: CircleAvatar(
                           radius: 20,
                           backgroundColor: Colors.black,
                            child: ClipOval(
                             child: Image.asset(
                               'assets/MoneyPage.png',
                                 fit: BoxFit.cover,
                                 width: 35,
                                  height: 35, 
                                  ),
                                 ),
                               ),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(left: 15, top: 23),
                             child: Row(
                             children: [
                              Text("Harshit's Money", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),),
                              const SizedBox(width: 95),
                              Text("Rs0", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 18, fontWeight: FontWeight.w600),),
                              const SizedBox(width: 5,),
                              Icon(Icons.arrow_drop_up_outlined, color: Colors.white,)
                             ],
                         ),
                           )
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20, top: 20),
                     child: Row(
                       children: [
                       Text("Harshit's Wallet", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),),
                        const SizedBox(width: 220),
                        Text("Rs0", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 13, fontWeight: FontWeight.w500),),
                       ],
                    ),
                   ),
                   const SizedBox(height: 10),
                   Divider(
                    color: Color.fromARGB(202, 0, 0, 0),
                    thickness: 0.1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Row(
                       children: [
                       Text("Gift Card Balance", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),),
                        const SizedBox(width: 208),
                        Text("Rs0", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 13, fontWeight: FontWeight.w500),),
                       ],
                    ),
                   ),
                   const SizedBox(height: 10),
                    Divider(
                    color: Color.fromARGB(164, 0, 0, 0),
                    thickness: 0.1,
                    indent: 20,
                    endIndent: 20,
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 22, top: 5),
                     child: Row(
                       children: [
                       Text("Zero Credits", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),),
                        const SizedBox(width: 242),
                        Text("Rs0", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 13, fontWeight: FontWeight.w500),),
                       ],
                    ),
                   ),
                ],
               ),   
            ),
             const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.white.withOpacity(0.9),
                                  thickness: 1,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "W A L L E T",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                color: Colors.white.withOpacity(0.6),
                                thickness: 1,
                              ))
                            ],
                          ),
                        ), 
                        const SizedBox(height: 15,),
                        Container(
                      width: 400,
                       height: 190,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade400,
                            Colors.deepPurple.shade700,
                            ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                            ),
                            ),
                           child: Column(
                           children: [
                          Container(
                          margin: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 10), 
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(
                                    image: AssetImage("assets/MoneyPage3.png"),
                                     fit: BoxFit.fitWidth,
                                       ),
                                         ),
                                        height: 140,
                                      ),
                                     const SizedBox(height: 3), 
                                       Padding(
                                       padding: const EdgeInsets.only(left: 150,),
                                       child: Row(
                                       children: [
                                       Text("Create Wallet",
                                      style: TextStyle(color: Colors.greenAccent, fontSize: 15, fontWeight: FontWeight.w400),
                                         ),
                                         const SizedBox(width: 1,),
                                      GestureDetector(
                                        onTap:  () {
                                Navigator.push(
                                context,
                                PageRouteBuilder(
                                          transitionDuration: const Duration(milliseconds: 500),
                                        pageBuilder: (context, animation, secondaryAnimation) => WalletPage(onTap: () {}),
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0); 
                               const end = Offset(0.0, 0.0);
                                   const curve = Curves.easeInOut;
                                        
                                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                  var offsetAnimation = animation.drive(tween);
                                        
                                    return SlideTransition(
                                           position: offsetAnimation,
                                             child: child,
                                                );
                                           },
                                       ),
                                     );
                                   },
                                        child: Icon(Icons.arrow_forward, color: Colors.greenAccent, size: 18,)),
                                       ],
                                        ),
                                     )
                                ],
                            ),
                        ),
            const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.white.withOpacity(0.9),
                                  thickness: 1,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "G I F T  C A R D S",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                color: Colors.white.withOpacity(0.6),
                                thickness: 1,
                              ))
                            ],
                          ),
                        ), 
                         const SizedBox(height: 15,),
             Container(
                      width: 400,
                       height: 190,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade400,
                            Colors.deepPurple.shade700,
                            ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                            ),
                            ),
                           child: Column(
                           children: [
                          Container(
                          margin: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 10), 
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(
                                    image: AssetImage("assets/MoneyPage1.png"),
                                     fit: BoxFit.cover
                                       ),
                                         ),
                                        height: 140,
                                      ),
                                     const SizedBox(height: 3), 
                                       Padding(
                                       padding:  EdgeInsets.only(left: 150,),
                                       child: Row(
                                       children: [
                                       Text("Buy Now",
                                      style: TextStyle(color: Colors.greenAccent, fontSize: 15, fontWeight: FontWeight.w400),
                                         ),
                                         SizedBox(width: 1,),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(
                                context,
                                PageRouteBuilder(
                                          transitionDuration: const Duration(milliseconds: 500),
                                        pageBuilder: (context, animation, secondaryAnimation) => GiftCardsPage(onTap: () {}),
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0); 
                               const end = Offset(0.0, 0.0);
                                   const curve = Curves.easeInOut;
                                        
                                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                  var offsetAnimation = animation.drive(tween);
                                        
                                    return SlideTransition(
                                           position: offsetAnimation,
                                             child: child,
                                                );
                                           },
                                       ),
                                     );
                                        },
                                        child: Icon(Icons.arrow_forward, color: Colors.greenAccent, size: 18,))
                                       ],
                                        ),
                                     )
                                ],
                            ),
                        ),
            const SizedBox(height: 15,),
                Container(
              width: 400,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade700],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                )
              ),
               child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 20, top: 25),
                     child: Row(
                       children: [
                       Text("Claim a Gift Card", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),),
                        const SizedBox(width: 200),
                         GestureDetector(
                          onTap:  () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                          transitionDuration: const Duration(milliseconds: 500),
                                        pageBuilder: (context, animation, secondaryAnimation) => ClaimGiftCardPage(onTap: () {}),
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0); 
                               const end = Offset(0.0, 0.0);
                                   const curve = Curves.easeInOut;
                                        
                                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                  var offsetAnimation = animation.drive(tween);
                                        
                                    return SlideTransition(
                                           position: offsetAnimation,
                                             child: child,
                                                );
                                           },
                                       ),
                                     );
                          },
                          child: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white,))
                           ],
                            ),
                            ),
                   const SizedBox(height: 10,),
                   Divider(
                    color: Color.fromARGB(202, 0, 0, 0),
                    thickness: 0.1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Row(
                       children: [
                       Text("Gift Card Balance", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),),
                        const SizedBox(width: 198),
                         GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                          transitionDuration: const Duration(milliseconds: 500),
                                        pageBuilder: (context, animation, secondaryAnimation) => GiftCardPage(onTap: () {}),
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0); 
                               const end = Offset(0.0, 0.0);
                                   const curve = Curves.easeInOut;
                                        
                                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                  var offsetAnimation = animation.drive(tween);
                                        
                                    return SlideTransition(
                                           position: offsetAnimation,
                                             child: child,
                                                );
                                           },
                                       ),
                                     );
                          },
                          child: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white,))
                       ],
                    ),
                   ),
                   const SizedBox(height: 10,),
                    Divider(
                    color: Color.fromARGB(164, 0, 0, 0),
                    thickness: 0.1,
                    indent: 20,
                    endIndent: 20,
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 22, top: 10),
                     child: Row(
                       children: [
                       Text("Purchase History", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),),
                        const SizedBox(width: 200),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                          transitionDuration: const Duration(milliseconds: 500),
                                        pageBuilder: (context, animation, secondaryAnimation) => PurchaseHistoryPage(onTap: () {}),
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0); 
                               const end = Offset(0.0, 0.0);
                                   const curve = Curves.easeInOut;
                                        
                                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                  var offsetAnimation = animation.drive(tween);
                                        
                                    return SlideTransition(
                                           position: offsetAnimation,
                                             child: child,
                                                );
                                           },
                                       ),
                                     );
                          },
                          child: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white,))
                       ],
                    ),
                   ),
                ],
               ),   
            ),
            const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.white.withOpacity(0.9),
                                  thickness: 1,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "F O R  E N T E R P R I S E",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                color: Colors.white.withOpacity(0.6),
                                thickness: 1,
                              ))
                            ],
                          ),
                        ), 
                        const SizedBox(height: 15,),
                        Container(
                        width: 400,
                       height: 190,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple.shade400,
                            Colors.deepPurple.shade700,
                            ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                            ),
                            ),
                           child: Column(
                           children: [
                          Container(
                          margin: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 10), 
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(
                                    image: AssetImage("assets/MoneyPage2.png"),
                                     fit: BoxFit.cover,
                                       ),
                                         ),
                                        height: 140,
                                      ),
                                     const SizedBox(height: 3), 
                                      const Padding(
                                       padding: const EdgeInsets.only(left: 150,),
                                       child: Row(
                                       children: [
                                       Text("Get Started",
                                      style: TextStyle(color: Colors.greenAccent, fontSize: 15, fontWeight: FontWeight.w400),
                                         ),
                                         const SizedBox(width: 1,),
                                      Icon(Icons.arrow_forward, color: Colors.greenAccent, size: 15,)
                                       ],
                                        ),
                                     )
                                ],
                            ),
                        ),
                        ],
                    ),
                    ) ,
               ),
      ),
    );
  }
}
