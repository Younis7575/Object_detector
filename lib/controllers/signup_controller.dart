import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:object_detector/Repository/auth_repo/auth_repo_controller.dart';

class SignupController extends GetxController
{
  static SignupController get instance => Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

    registerUser(String email, String password)
  {
    AuthRepoController.instance.createUserWithEmailAndPassword(email, password);
  }

}