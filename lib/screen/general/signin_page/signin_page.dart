import 'package:fashion_app/screen/general/login_page/login_page.dart';
import 'package:fashion_app/screen/user/home_page/home_page.dart';
import 'package:fashion_app/widget/button_image.dart';
import 'package:fashion_app/widget/button_text.dart';
import 'package:fashion_app/widget/input_field.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();
  login() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
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
              pressed: () {
                login();
              },
              width: MediaQuery.of(context).size.width - 100,
              title: "Continue",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text("Sign In"))
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
