import 'package:fashion_app/widget/button_image.dart';
import 'package:fashion_app/widget/button_text.dart';
import 'package:fashion_app/widget/input_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top:20.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            inputField(
              hint: "Username",
              controller: userController,
            ),
            inputField(
              hint: "Phone",
              controller: phoneController,
            ),
            inputField(
              hint: "Email",
              controller: emailController,
            ),
            inputField(
              hint: "Password",
              controller: passwordController,
            ),
            inputField(
              hint: "Confirmation Password",
              controller: confPasswordController,
            ),
            buttonText(
              pressed: () {},
              width: MediaQuery.of(context).size.width - 100,
              title: "Continue",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                TextButton(onPressed: () {}, child: const Text("Sign In"))
              ],
            ),
            buttonImage(
              pressed: () {},
              width: MediaQuery.of(context).size.width - 100,
              image:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/120px-Google_%22G%22_Logo.svg.png",
              title: "Continue with Google",
            ),
            buttonImage(
              pressed: () {},
              width: MediaQuery.of(context).size.width - 100,
              image:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1667px-Apple_logo_black.svg.png",
              title: "Continue with Apple",
            ),
          ],
        ),
      )),
    );
  }
}
