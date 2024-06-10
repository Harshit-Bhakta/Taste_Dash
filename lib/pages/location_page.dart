import 'package:flutter/material.dart';
import 'package:food_app/pages/money_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.0),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                      child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 35,
                      ),
                       onTap: () {
                                Navigator.pop(
                                context,
                                PageRouteBuilder(
                                          transitionDuration: const Duration(milliseconds: 500),
                                        pageBuilder: (context, animation, secondaryAnimation) => MoneyPage(onTap: () {}),
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
                       const SizedBox(width: 8,),
                     const Text(
                  "Select a location",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                                )
                    ],
                  ),
                ),
              ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Container(
            width: 400,
            height: 210,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Padding(
                       padding: EdgeInsets.only(top: 23,left: 20),
                       child: Icon(Icons.gps_fixed, size: 25, color: Colors.white),
                             ),
                         Padding(
                           padding: EdgeInsets.only(top: 18, left: 10),
                           child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                'Location permission not\nenabled',
                                 style: TextStyle(color: Colors.greenAccent, fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                               Padding(
                             padding: const EdgeInsets.only(top: 10), 
                              child: Text(
                                'Tap here to enable permission for a\nbetter experience',
                             style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
                                   ),
                                 ),
                               ],
                            ),
                         ),
                           Spacer(), 
                           Padding(
                           padding: const EdgeInsets.only(right: 20, top: 63),
                            child: Text(
                                "Enable",
                              style: TextStyle(color: Colors.greenAccent, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                            ),
                          ],
                     ),const SizedBox(height: 10,),
                     Divider(
                      color: Color.fromARGB(171, 0, 0, 0),
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 20,
                     ),
                     const SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.add, color: Colors.white, size: 23),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20, left: 10),
                            child: Text('Add Address', style: TextStyle(color: Colors.greenAccent,fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, left: 195),
                            child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
                          )
                        ],
                       ),
                     )
             ],
           ),
          ),
        ),
    );
  }
}