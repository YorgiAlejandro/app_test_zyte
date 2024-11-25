import 'package:app_test/features/autheentication/register_with_email.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool registerWithEmail = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(30))  
      ),
      child: Column(
        children: [
          const SizedBox(height: 16,),
          Row(
            children: [
              const SizedBox(width: 10,),
              IconButton(
                onPressed:(){
                  registerWithEmail 
                  ? setState(() {
                    registerWithEmail = false;
                  })
                  : Navigator.pop(context);
                },
                icon: const Icon(Iconsax.arrow_left),
              ),
              const Expanded(
                child: Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(width: 60,)
            ],
          ),
          const Divider(indent: 16, endIndent: 16,),
          registerWithEmail 
          ? const RegisterWithEmail() 
          : Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      constraints: const BoxConstraints(maxHeight: 40),
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: "Your email...",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 24.0), // Ajusta el relleno
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        registerWithEmail = !registerWithEmail;  
                      });
                    },
                    child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(5, 21, 50, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        child: const Center(
                            child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )))),
                const Text(
                  "Or",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.all(Radius.circular(15))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16,),
                          Image.asset(
                            "assets/social-media-google.png",
                            height: 20,
                          ),
                          const Expanded(
                            child: Text(
                              "Continue with Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                        ],
                      )
                    )
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 16,),
                          Icon(
                            Icons.apple,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Text(
                              "Continue with Apple",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(width: 32,),
                        ],
                      )
                    )
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
