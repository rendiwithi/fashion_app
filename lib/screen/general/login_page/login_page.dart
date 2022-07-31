import 'package:fashion_app/screen/general/signin_page/signin_page.dart';
import 'package:fashion_app/screen/user/home_page/home_page.dart';
import 'package:fashion_app/static/general.dart';
import 'package:fashion_app/widget/button_image_border.dart';
import 'package:fashion_app/widget/button_text.dart';
import 'package:fashion_app/widget/input_field_border.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 100),
                child: Text(
                  "A&L Fashion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              inputFieldBorder(
                hint: "Number or Email",
                controller: userController,
              ),
              inputFieldBorder(
                hint: "Password",
                controller: passwordController,
              ),
              buttonText(
                width: MediaQuery.of(context).size.width - 100,
                title: "Login",
                pressed: () {
                  login();
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: buttonImageBorder(
                  pressed: () {},
                  width: MediaQuery.of(context).size.width - 100,
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/120px-Google_%22G%22_Logo.svg.png",
                  title: "Continue with Google",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: buttonImageBorder(
                  pressed: () {},
                  width: MediaQuery.of(context).size.width - 100,
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1667px-Apple_logo_black.svg.png",
                  title: "Continue with Apple",
                ),
              ),
              buttonText(
                width: MediaQuery.of(context).size.width - 100,
                title: "Sign Up",
                pressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninPage(),
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "I Forgot my password",
                  style: TextStyle(
                    color: mainColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
