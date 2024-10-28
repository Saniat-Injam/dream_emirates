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
      home: CreateAccountScreen(),
    );
  }
}

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool _isPasswordVisible1 = false;
  bool _isPasswordVisible2 = false;
  final TextEditingController _dobController = TextEditingController();

  @override
  void dispose() {
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFF3F6FF),
      backgroundColor: const Color(0xFFF3F6FF),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
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

                // Create an account
                const Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                // Full name input
                _buildTextField('Full name', Icons.person, false),
                const SizedBox(height: 12),
                // Email input
                _buildTextField('Email address', Icons.email, false),
                const SizedBox(height: 12),
                // Phone number input
                _buildTextField('Phone number', Icons.phone, false),
                const SizedBox(height: 12),

                // Date of Birth input
                TextField(
                  controller: _dobController,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'Date of birth',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFE9EDF9),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null) {
                          _dobController.text =
                              '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Password input
                _buildPasswordField('Password', _isPasswordVisible1, (value) {
                  setState(() {
                    _isPasswordVisible1 = !_isPasswordVisible1;
                  });
                }),
                const SizedBox(height: 12),

                // Confirm password input
                _buildPasswordField('Confirm password', _isPasswordVisible2,
                    (value) {
                  setState(() {
                    _isPasswordVisible2 = !_isPasswordVisible2;
                  });
                }),
                const SizedBox(height: 24),

                // Sign In Button
                ElevatedButton(
                  onPressed: () {
                    // Handle sign-in logic
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
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Bottom Sign In Link
                ElevatedButton(
                  onPressed: () {
                    // Handle sign-in logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE8EDF1),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, IconData icon, bool isObscure) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color(0xFFE9EDF9),
        prefixIcon: Icon(icon),
      ),
    );
  }

  Widget _buildPasswordField(
      String hintText, bool isPasswordVisible, Function onPressed) {
    return TextField(
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color(0xFFE9EDF9),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () => onPressed(),
        ),
      ),
    );
  }
}
