import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/home_screen.dart';

import '../component/my_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwdController = TextEditingController();
  final confirmController = TextEditingController();

  signUpWithEmail() {
    print('Sign In');
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      body: Form(
        child: Column(children: [
          const Spacer(),
          Text(
            'Welcome to our community',
            style: GoogleFonts.mitr(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Text(
            ':P',
            style: GoogleFonts.mitr(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 20),
          MyTextField(
              controller: nameController,
              hintText: 'Enter your name',
              obscureText: false,
              labelText: 'Name'),
          const SizedBox(height: 20),
          MyTextField(
              controller: emailController,
              hintText: 'Enter your email',
              obscureText: false,
              labelText: 'Email'),
          const SizedBox(height: 20),
          MyTextField(
              controller: passwdController,
              hintText: 'Enter your password',
              obscureText: true,
              labelText: 'Password'),
          const SizedBox(height: 20),
          MyTextField(
              controller: confirmController,
              hintText: 'Confirm your password',
              obscureText: true,
              labelText: 'Confirm Password'),
          const SizedBox(height: 20),
          MyButton(onTap: signUpWithEmail, hinText: 'Sign Up'),
          if (!isKeyboard) const SizedBox(height: 20),
          if (!isKeyboard)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'SignIn now.',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          const Spacer(),
        ]),
      ),
    );
  }
}
