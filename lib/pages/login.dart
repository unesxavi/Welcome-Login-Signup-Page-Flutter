import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth_page/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
          backgroundColor: kPrimaryColor,
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
                  "assets/images/main_top.png",
                  width: 150,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 150,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      'Login'.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    SvgPicture.asset(
                      'assets/icons/login.svg',
                      width: 260,
                    ),
                    const SizedBox(height: 50),
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
                          'Login'.toUpperCase(),
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
                          "Dont't have an Account ? ",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: const Text(
                            'Sign Up',
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
