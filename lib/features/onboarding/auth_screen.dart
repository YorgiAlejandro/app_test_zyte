import 'package:app_test/bottom_navigation.dart';
import 'package:app_test/features/autheentication/login_page.dart';
import 'package:app_test/features/autheentication/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/login_background.jpeg',
            fit: BoxFit.cover,
            height: screenHeight,
          ),
          Container(
            height: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.6),
                  Colors.white.withOpacity(0.9),
                  Colors.white.withOpacity(1.0),
                  Colors.white.withOpacity(1.0),
                  Colors.white.withOpacity(1.0),
                  Colors.white.withOpacity(1.0),
                  Colors.white.withOpacity(1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "zyte",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 16),
                        Icon(Icons.apple, color: Colors.white),
                        Expanded(
                          child: Text(
                            "Continue with Apple",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(width: 32),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _showRegisterSheet(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(5, 21, 50, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _showLoginSheet(context);
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Get.to( ()=> const BottomNavigationMenu() );
                  },
                  child: const Text(
                    "Continue as guest",
                    style: TextStyle(
                      color: Colors.black87,
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showRegisterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return const FractionallySizedBox(
          heightFactor: 0.90,
          child: RegisterPage(),
        );
      },
    );
  }
  void _showLoginSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return const FractionallySizedBox(
          heightFactor: 0.90,
          child: LoginPage(),
        );
      },
    );
  }
}