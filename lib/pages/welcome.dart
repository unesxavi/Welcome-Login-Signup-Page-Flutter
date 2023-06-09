import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth_page/constants.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  width: 100,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 70,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      'Hello FlexyCodes'.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    SvgPicture.asset(
                      'assets/icons/chat.svg',
                      width: 300,
                    ),
                    const SizedBox(height: 50),
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
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kPrimaryLightColor),
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
                            color: Colors.black,
                          ),
                        ),
                      ),
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
