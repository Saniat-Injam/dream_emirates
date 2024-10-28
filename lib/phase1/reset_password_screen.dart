import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPasswordScreen(),
    );
  }
}

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isPasswordVisible1 = false;
  bool _isPasswordVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FF), // Light gray background
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                const SizedBox(height: 32),

                //Reset Password
                const Text(
                  'Reset password',
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 8),

                //Create a new password for your screen
                const Text(
                  'Create a new password for your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 24),

                // New password input
                TextField(
                  obscureText: !_isPasswordVisible1,
                  decoration: InputDecoration(
                    hintText: 'New password',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFE9EDF9),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible1
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible1 = !_isPasswordVisible1;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Confirm new password input
                TextField(
                  obscureText: !_isPasswordVisible2,
                  decoration: InputDecoration(
                    hintText: 'Confirm new password',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFE9EDF9),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible2
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible2 = !_isPasswordVisible2;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 24),
                // Sign In button
                ElevatedButton(
                  onPressed: () {
                    // Handle sign-in action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
