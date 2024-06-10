import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/register_page.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function() onTap;

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/HomePage7.png"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                          text: "Enjoy Our \nDelcious Meal!!")),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: emailController,
                      obscureText: false,
                      style: TextStyle(color: Colors.white),
                      focusNode: FocusNode(),
                      autofocus: false,
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.email_rounded, color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          fillColor: Colors.white.withOpacity(0.3),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3),
                                width: 0.5,
                              ))),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      focusNode: FocusNode(),
                      autofocus: false,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.visibility_off_rounded,
                              color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          fillColor: Colors.white.withOpacity(0.3),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3),
                                width: 0.5,
                              ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 1),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.check_box_rounded,
                              color: Colors.white,
                            )),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                text: "Remember me")),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: login,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 1500,
                        padding: EdgeInsets.only(
                            top: 20, left: 20, right: 20, bottom: 20),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 57, 0, 245)
                                    .withOpacity(0.8),
                                Color.fromARGB(255, 144, 52, 244)
                                    .withOpacity(0.8),
                              ],
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.white.withOpacity(0.1),
                            )),
                        child: const Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: GestureDetector(
                      onTap: () {},
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              text: "Forgot Password?")),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              text: "------------------Or------------------"),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 10, left: 70, right: 50),
                      height: 60,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 57, 0, 245).withOpacity(0.8),
                              Color.fromARGB(255, 144, 52, 244)
                                  .withOpacity(0.8),
                            ],
                          ),
                          border: Border.all(
                            width: 1,
                            color: Colors.white.withOpacity(0.1),
                          )),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/Google.png"),
                                height: 35,
                                width: 30,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Continue with Google",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 10, left: 70, right: 50),
                      height: 60,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 57, 0, 245).withOpacity(0.8),
                              Color.fromARGB(255, 144, 52, 244)
                                  .withOpacity(0.8),
                            ],
                          ),
                          border: Border.all(
                            width: 1,
                            color: Colors.white.withOpacity(0.1),
                          )),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/Apple.png"),
                                height: 38,
                                width: 30,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Continue with Apple",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Color.fromARGB(255, 93, 255, 252),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              text: "Don't hava an account?"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)=> RegisterPage(onTap: (){}))
                              );
                            },
                            child: RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    text: "Sign up")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
