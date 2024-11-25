import 'package:flutter/material.dart';

class RegisterWithEmail extends StatefulWidget {
  const RegisterWithEmail({super.key});

  @override
  State<RegisterWithEmail> createState() => _RegisterWithEmailState();
}

class _RegisterWithEmailState extends State<RegisterWithEmail> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            child: TextField(
              decoration: InputDecoration(
                constraints: const BoxConstraints(maxHeight: 40),
                filled: true,
                fillColor: Colors.grey[100],
                hintText: "Your email",
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
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            child: TextField(
              decoration: InputDecoration(
                constraints: const BoxConstraints(maxHeight: 40),
                filled: true,
                fillColor: Colors.grey[100],
                hintText: "Create password",
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
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            child: TextField(
              decoration: InputDecoration(
                constraints: const BoxConstraints(maxHeight: 40),
                filled: true,
                fillColor: Colors.grey[100],
                hintText: "Re-enter password",
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
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 4, bottom: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      constraints: const BoxConstraints(maxHeight: 40),
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: "Name",
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
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 4.0, right: 16, bottom: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      constraints: const BoxConstraints(maxHeight: 40),
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: "Last name",
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
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                activeColor: Colors.grey,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  side: BorderSide.none
                ),
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              Expanded(
                child: RichText(
                  text: const TextSpan(
                    text: "I agree to the ",
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                        style: TextStyle(color: Colors.black45),
                      ),
                      TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
