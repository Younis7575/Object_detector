import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:object_detector/screens/auth/phone_auth/enter_number_screen.dart';
import 'package:object_detector/screens/auth/signup_screen.dart';
import 'package:object_detector/screens/pages/dashboard/dashboard_screen.dart';
import '../../constant/theme.dart';
import '../../controllers/login_controller.dart';
import '../../utills/ui_buttons.dart';
import 'forget_auth/forget_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  LoginController loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  // late String _email;
  // String _password;

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/my_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/app_icon.png',
                  width: 200,
                  height: 200,
                ),
                Text(
                  "Login Screen",
                  style: CustomeTheme.lightTheme.textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 100,
                ),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: loginController.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter email";
                      }
                      if (!value.endsWith('@gmail.com')) {
                        return "Enter Valid Email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Email",
                      hintStyle:
                          CustomeTheme.lightTheme.textTheme.headlineSmall,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 50, right: 30),
                        child: Image.asset(
                          "assets/icons/email.png",
                          width: 25,
                          height: 25,
                        ),
                      ),
                      // icon: Image.asset("assets/icons/email.png"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Password";
                        }
                        if (value.length >= 8) {
                          return "Password Must be 8 Character";
                        }
                        if (!value.contains(RegExp(r'[A-Z]'))) {
                          return 'Password must contain at least one uppercase letter';
                        }
                        if (!value.contains(RegExp(r'[0-9]'))) {
                          return "Must be 1 Numeric";
                        }
                        if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                          return 'Password must contain at least one special symbol';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      controller: loginController.passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Password",
                        hintStyle:
                            CustomeTheme.lightTheme.textTheme.headlineSmall,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 50, right: 30),
                          child: Image.asset(
                            "assets/icons/password.png",
                            width: 25,
                            height: 25,
                          ),
                        ),
                        // icon: Image.asset("assets/icons/email.png"),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: TextButton(
                      onPressed: () {
                        Get.to(EnterEmailScreen());
                      },
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      )),
                ),
                // SizedBox(height: 20,),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>DashboardScreen());
                      },
                      child: Text(
                        "LOGIN",
                        style: CustomeTheme.lightTheme.textTheme.headlineMedium,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.transparent),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Account",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => SignupScreen());
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Color(0xff00FEFB)),
                        ))
                    // Text("Signup",style: TextStyle(color: Colors.white),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => EnterPhoneNumerScreen());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/icons/phone-call.png",
                            width: 25,
                            height: 25,
                          ),
                          Text(
                            "Phone",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/google.png",
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/facebook.png",
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          "facebook",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/instagram.png",
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          "instagram",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
