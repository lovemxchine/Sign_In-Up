import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/signup_screen.dart';

import '../component/myimage_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  signInWithEmail() {}

  @override
  Widget build(BuildContext context) {
    final isOverflow = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(children: [
            const Spacer(),
            Text(
              "Hello World Application",
              textAlign: TextAlign.center,
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
              controller: emailController,
              hintText: "Enter your Email",
              obscureText: false,
              labelText: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: passwordController,
              hintText: "Enter your password",
              obscureText: true,
              labelText: "Password",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextButton(
                    onPressed: () => {},
                    child: Text(
                      'Forgot บ่อ้าย',
                      textAlign: TextAlign.end,
                      style: GoogleFonts.mitr(
                        textStyle: const TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            MyButton(onTap: signInWithEmail, hinText: 'Sign In'),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'Or continue with',
                  style: GoogleFonts.mitr(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                  ),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.blue,
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            if (!isOverflow)
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagPath: 'assets/images/google.png'),
                  SizedBox(
                    width: 10,
                  ),
                  MyIconButton(imagPath: 'assets/images/facebook.png'),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member ?',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.mitr(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      'Register now ',
                      textAlign: TextAlign.end,
                      style: GoogleFonts.mitr(
                        textStyle: const TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                    )),
              ],
            ),
            const Spacer()
          ]),
        ),
      ),
    );
  }
}
