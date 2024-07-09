import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:object_detector/screens/auth/phone_auth/enter_number_screen.dart';
import 'package:object_detector/screens/pages/dashboard/dashboard_screen.dart';
import '../../constant/theme.dart';
import '../../controllers/login_controller.dart';
import '../../controllers/signup_controller.dart';
import '../../utills/ui_buttons.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  final _formKey = GlobalKey<FormState>();

  SignupController signupController = Get.put(SignupController());
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
                  // height: 200,
                ),
                Text(
                  "Signup Screen",
                  style: CustomeTheme.lightTheme.textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Email";
                        }
                        if (!value.endsWith("@gmail.com")) {
                          return "Email end with @gmail.com";
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      controller: signupController.emailController,
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
                      )),
                ),
                SizedBox(height: 10),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Name Field is Empty";
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      controller: signupController.nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Name",
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
                SizedBox(height: 10),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Phone Number";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      controller: signupController.phoneController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Phone",
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
                SizedBox(height: 10),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty &&
                                !value.contains(RegExp(r'[0-9]')) &&
                                !value.contains(RegExp(r'[A-Z]')) &&
                                value.length >= 9 &&
                                !value.contains(
                                    RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                          return "Weak Password";
                        } else {

                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      controller: signupController.passwordController,
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
                SizedBox(height: 10),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: TextFormField(
                    validator: (value)
                      {
                        if(value == null || value.isEmpty)
                          {
                            return "Enter Confirm Password";
                          }
                        if(value != signupController.passwordController.text)
                          {
                           return "Password Not Matched";
                          }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      controller: signupController.cpasswordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm Password",
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
                SizedBox(height: 20),
                CustomPaint(
                  size: const Size(150, 150),
                  painter: PaintButton(),
                  child: Container(
                    width: 300,
                    child: ElevatedButton(
                      // onPressed: () {
                      //   if (_formKey.currentState!.validate()) {
                      //     SignupController.instance.registerUser(
                      //       signupController.emailController.text,
                      //       signupController.passwordController.text,
                      //     ).then((result) {
                      //       if (result) {
                      //         Fluttertoast.showToast(
                      //           msg: "Signup Successful",
                      //           toastLength: Toast.LENGTH_SHORT,
                      //           gravity: ToastGravity.BOTTOM,
                      //           timeInSecForIosWeb: 1,
                      //           backgroundColor: Colors.green,
                      //           textColor: Colors.white,
                      //           fontSize: 16.0,
                      //         );
                      //         Get.to(() => DashboardScreen());
                      //       } else {
                      //         Fluttertoast.showToast(
                      //           msg: "Signup Failed",
                      //           toastLength: Toast.LENGTH_SHORT,
                      //           gravity: ToastGravity.BOTTOM,
                      //           timeInSecForIosWeb: 1,
                      //           backgroundColor: Colors.red,
                      //           textColor: Colors.white,
                      //           fontSize: 16.0,
                      //         );
                      //       }
                      //     });
                      //   }
                      // },

                      onPressed: () {
                        if(_formKey.currentState!.validate())
                          {
                          SignupController.instance.registerUser(
                              signupController.emailController.text.toString(),
                              signupController.passwordController.text.toString());

                          }
                        // Get.to(() => DashboardScreen());
                      },
                      child: Text(
                        "Signup",
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
                      "Login Account",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => LoginScreen());
                        },
                        child: Text(
                          "Login",
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
