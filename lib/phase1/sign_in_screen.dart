import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FF),
        // Light background color

        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: ShapeDecoration(
              color: const Color(0xFFF3F6FF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              // Logo
              Container(
                height: 77.50,
                width: 86.85,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("images/logo.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 40),

              // Sign in to your account
              const Text(
                'Sign in to your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF111111),
                  fontSize: 24,
                  //fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(height: 20),

              // Email or phone number field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email address or phone number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: const TextStyle(
                  color: Color(0xFF111111),
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
              const SizedBox(height: 20),

              // Password field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon:
                      const Icon(Icons.visibility_off), // Visibility icon
                ),
                style: const TextStyle(
                  color: Color(0xFF111111),
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
              const SizedBox(height: 10),

              // Remember me checkbox
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                    activeColor: Colors.black, // black checkbox
                  ),
                  const Text('Remember me'),
                ],
              ),
              const SizedBox(height: 20),

              // Sign in button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Black button background
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white, // white text inside the button
                    //fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Sign up button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFF3F6FF), // Black button background
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF111111), // Black text inside the button
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Forgot password button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFF3F6FF), // Black button background
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE8EDF1)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Forgot password',
                  style: TextStyle(
                    color: Color(0xFF111111), // black text inside the button
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
