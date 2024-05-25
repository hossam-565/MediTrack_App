import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LoginPage_patient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey.shade700, Colors.black],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade800,
                    prefixIcon: Icon(Icons.email, color: Colors.grey),
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade800,
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    minimumSize: Size(double.infinity, 0),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20.0),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(
                          color: Color(0xFF707684),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          letterSpacing: 0.50,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF199A8E),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Action to navigate to Sign Up page
                            print('Navigate to Sign Up page');
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                Divider(color: Colors.grey),
                SizedBox(height: 20.0),
                SignInButton(
                  iconPath: 'assets/google.png',
                  text: 'Sign in with Google',
                  onPressed: () {},
                ),
                SizedBox(height: 10.0),
                SignInButton(
                  iconPath: 'assets/apple.png',
                  text: 'Sign in with Apple',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onPressed;

  SignInButton({required this.iconPath, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 14.0),
        minimumSize: Size(double.infinity, 0),
      ),
      icon: Image.asset(
        iconPath,
        height: 24.0,
      ),
      label: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
