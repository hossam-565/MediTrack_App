import 'package:flutter/material.dart';


class SignUp_patient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF002B4E), Color(0xFF001A27)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildTextField(
                icon: Icons.person,
                hintText: 'Enter your name',
              ),
              SizedBox(height: 16),
              _buildTextField(
                icon: Icons.email,
                hintText: 'Enter your email',
              ),
              SizedBox(height: 16),
              _buildTextField(
                icon: Icons.lock,
                hintText: 'Enter your password',
                obscureText: true,
                suffixIcon: Icons.visibility,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {
                      // Handle checkbox state
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'I agree to the meditrack ',
                        style: TextStyle(color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms of Service ',
                            style: TextStyle(color: Colors.tealAccent),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: Colors.tealAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.tealAccent,
                  ),
                  onPressed: () {
                    // Handle sign up button press
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Handle "Sign Up" link press
                },
                child: Text(
                  'Don\'t have an account? Sign Up',
                  style: TextStyle(color: Color.fromARGB(255, 19, 19, 215)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required IconData icon, required String hintText, bool obscureText = false, IconData? suffixIcon}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(icon),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      ),
    );
  }
}
