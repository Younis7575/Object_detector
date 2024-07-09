import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:object_detector/Repository/exceptions/signup_email_password_failure.dart';
import 'package:object_detector/screens/auth/login_screen.dart';

import '../../screens/pages/dashboard/dashboard_screen.dart';

class AuthRepoController extends GetxController {
  // create instance of controller
  static AuthRepoController get instance => Get.put(AuthRepoController());

  // variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  //onReady Method
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  void _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(() => DashboardScreen());
  }

  // create user with email and password
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex= SignupEmailPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
      throw ex;
    } catch (_) {
      final ex= SignupEmailPasswordFailure.code(e.toString());
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
      throw ex;
    }
  }

  // login user with email and password
  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  // logout function
Future<void> logout() async => await _auth.signOut();






}
