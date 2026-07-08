import 'package:flutter/material.dart';
import 'package:store/core/image/appimage.dart';
import 'package:store/core/widgets/appbutton.dart';
import 'package:store/features/login/screen/login.dart';
import 'package:store/features/signup/screen/view.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            Image.asset(Appimage.onboarding, height: 350),
            SizedBox(height: 32),
            Text(
              'Welcome to our app',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF7F4E1D),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Shop online and get groceries \n delivered from stores to your home \nin as fast as 1 hour .',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0XFF7F4E1D)),
            ),
            SizedBox(height: 40),
            AppButton(
              text: 'Sign up',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
            ),
            SizedBox(height: 20),
            AppButton(
              text: 'Sign in',
              color: Colors.white,
              textColor: Color(0XFFFF5E00),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}