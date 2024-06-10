import 'package:flutter/material.dart';
import 'package:food_app/components/my_drawer.dart';
import 'package:food_app/pages/dining.dart';
import 'package:food_app/pages/money_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [
    HomeContent(TextEditingController()),
    DiningPage(),
    MoneyPage(onTap: () {  },),
  ];
  final TextEditingController textEditingController = TextEditingController();

  bool shouldShowAppBar() {
    return index == 0;
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color.fromARGB(255, 155, 250, 255),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          iconTheme:
              MaterialStateProperty.resolveWith<IconThemeData>((states) {
            if (states.contains(MaterialState.selected)) {
              return IconThemeData(color: Colors.black);
            }
            return IconThemeData(color: Colors.white);
          }),
        ),
        child: NavigationBar(
          height: 80,
          backgroundColor: Color.fromARGB(255, 24, 27, 26),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.delivery_dining_sharp),
              label: "Delivery",
            ),
            NavigationDestination(
                icon: Icon(Icons.dinner_dining_sharp), label: "Dining"),
            NavigationDestination(
                icon: Icon(Icons.wallet_giftcard_sharp), label: "Money"),
          ],
        ),
      ),
      appBar: shouldShowAppBar()
          ? AppBar(
              elevation: 0,
              backgroundColor:
                  const Color.fromARGB(255, 0, 0, 0).withOpacity(0.0),
              leading: Builder(builder: (context) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: Icon(Icons.menu),
                    iconSize: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                );
              }),
            )
          : null,
      body: screens[index],
      drawer: MyDrawer(),
      extendBodyBehindAppBar: true,
    );
  }
}

class HomeContent extends StatelessWidget {
  final TextEditingController textEditingController;

  HomeContent(this.textEditingController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/HomePage7.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 130, top: 90),
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        text: "Find Your \nFavourite Food")),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 120),
                child: TextFormField(
                  controller: textEditingController,
                  style: TextStyle(color: Colors.grey.shade100),
                  focusNode: FocusNode(),
                  autofocus: false,
                  decoration: InputDecoration(
                      prefixIcon:
                          // ignore: prefer_const_constructors
                          Icon(Icons.search, size: 30, color: Colors.white),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      hintText: 'What do you want to order?',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade100,
                      ),
                      fillColor: Colors.white.withOpacity(0.25),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                            width: 0.5,
                          )),
                          focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                            width: 0.5,
                          )
                          ),
                          ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: Stack(children: [
                  Container(
                    height: 170,
                    width: 350,
                    padding: EdgeInsets.only(
                    top: 20, left: 1, right: 10, bottom: 25),
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.3),
                        border: Border.all(
                          width: 1,
                          color: Colors.white.withOpacity(0.1),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 125, bottom: 20),
                      child: Column(
                        children: [
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  text: "EPIC DEALS 30% OFF")),
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                  text: "Applicable terms of condition")),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 45,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 0, 0, 0),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white.withOpacity(0.1),
                                )),
                            child: const Center(
                              child: Text(
                                'Order Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/HomePage4.png',
                          scale: 20,
                        ),
                      )),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                                text: "Nearby Foods"))),
                    const SizedBox(
                      width: 160,
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            text: "View More")),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.5),
                            border: Border.all(
                              width: 1,
                              color: Colors.white.withOpacity(0.3),
                            )),
                        child: const Center(
                          child: Text(
                            'All Foods',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.6),
                            )),
                        child: const Center(
                          child: Text(
                            'Popular',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.6),
                            )),
                        child: const Center(
                          child: Text(
                            'Pizzas',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.15),
                          border: Border.all(
                              width: 1, color: Colors.white.withOpacity(0.1))),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 15,
                              left: 25,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(400),
                                child: Image.asset(
                                  'assets/HomePage5.png',
                                  scale: 8,
                                ),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Center(
                              child: Text(
                                "Dominos",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130, left: 5),
                            child: Center(
                              child: Text(
                                "Rs. 299/-",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 200,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.15),
                          border: Border.all(
                              width: 1, color: Colors.white.withOpacity(0.1))),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 15,
                              left: 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  'assets/HomePage6.png',
                                  scale: 25,
                                ),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 80),
                            child: Center(
                              child: Text(
                                "Burger King",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130, left: 5),
                            child: Center(
                              child: Text(
                                "Rs. 139/-",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
