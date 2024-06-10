import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key, required Null Function() onTap});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final TextEditingController textEditingController = TextEditingController();
   bool isChecked = false;

    void _toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
  }
  
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
                            WalletPage(onTap: () {}),
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
                  "Create Wallet",
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Container(
            height: 570,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Colors.deepPurple.shade400,
                  Colors.deepPurple.shade700
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(0, 4),
                              blurRadius: 15,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/WalletPage.png"),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter KYC Details",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Stack(
                    children: [
                      TextFormField(
                        cursorColor: Colors.black,
                        controller: textEditingController,
                        style: TextStyle(color: Colors.grey.shade100),
                        focusNode: FocusNode() ,
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          labelText: 'Your name (as per PAN)',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          fillColor: Colors.white.withOpacity(0.0),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color:
                                    Colors.greenAccent,
                                width: 1.5),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                 Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Stack(
                    children: [
                      TextFormField(
                        cursorColor: Colors.black,
                        controller: textEditingController,
                        style: TextStyle(color: Colors.grey.shade100),
                        focusNode: FocusNode() ,
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          labelText: 'PAN number',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          fillColor: Colors.white.withOpacity(0.0),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color:
                                    Colors.greenAccent,
                                width: 1.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                 ),
                 const SizedBox(height: 10,),
                Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                 child: Stack(
                  children: [
                    TextFormField(
                         cursorColor: Colors.black,
                         controller: textEditingController,
                       style: TextStyle(color: Colors.grey.shade100),
                          focusNode: FocusNode(),
                      autofocus: false,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      labelText: 'Date of birth',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                         color: Color.fromARGB(255, 255, 255, 255),
                             ),
                           fillColor: Colors.white.withOpacity(0.0),
                            filled: true,
                              enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                               width: 1.5,
                                 ),
                                ),
                             focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                 color: Colors.greenAccent,
                                 width: 1.5,
                                  ),
                              ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                               Icons.calendar_month_outlined, 
                                  color: Colors.greenAccent,
                                 ),
                            ),
                           ),
                      ),
                       ],
                   ),
                 ),
                 const SizedBox(height: 10),
                 Row(
                  children: [
                     Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: _toggleCheckbox,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: isChecked
              ? CustomCheckboxIcon(
                  key: ValueKey<bool>(isChecked),
                  color: Color.fromARGB(255, 105, 240, 211).withOpacity(1),
                  tickColor: Colors.white,
                  size: 25,
                )
              : Icon(Icons.check_box_outline_blank,
                  key: ValueKey<bool>(isChecked),
                  size: 25,
                  color: Colors.white),
        ),),
      ),
                    const SizedBox(width: 10,),
                    Text('I accept the',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(width: 5,),
                     Text('privacy policy',
                 style: TextStyle(color: Colors.greenAccent, fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(width: 5),
                     Text('and product',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(width: 5),
                     Text('T&Cs',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ],
                 )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          child: Center(
            child: Text("Submit", 
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
             colors:[Color.fromARGB(255, 45, 225, 222), Color.fromARGB(255, 44, 249, 225)],
            stops: [0.2,0.7],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCheckboxIcon extends StatelessWidget {
  final Color color;
  final Color tickColor;
  final double size;

  const CustomCheckboxIcon({
    Key? key,
    required this.color,
    required this.tickColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Icon(
          Icons.check,
          size: size * 0.7,
          color: tickColor,
        ),
      ),
    );
  }
}