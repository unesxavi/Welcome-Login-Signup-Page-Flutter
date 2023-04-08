import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth_page/constants.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
          backgroundColor: Colors.purple[400],
          child: const Icon(Icons.home),
        ),
        body: SizedBox(
          // color: Colors.amber[100],
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/signup_top.png",
                  width: 130,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 80,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      'Signup'.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SvgPicture.asset(
                      'assets/icons/signup.svg',
                      width: 240,
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(66),
                        color: kPrimaryLightColor,
                      ),
                      child: const TextField(
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "Your Email :",
                          hintStyle: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          // labelText: "Email :",
                          labelStyle: TextStyle(
                            fontSize: 18,
                          ),
                          // border: OutlineInputBorder(),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person,
                            color: kPrimaryColor,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(66),
                        color: kPrimaryLightColor,
                      ),
                      child: const TextField(
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "Password :",
                          hintStyle: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          // labelText: "Email :",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          // border: OutlineInputBorder(),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: kPrimaryColor,
                            size: 18,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kPrimaryColor),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white60),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66),
                            ),
                          ),
                        ),
                        child: Text(
                          'Signup'.toUpperCase(),
                          style: const TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Aleardy have an Account ? ",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: 'SourceSansPro',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
