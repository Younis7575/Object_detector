import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constant/theme.dart';
import '../../../../controllers/enter_email_controller.dart';
import '../../../../controllers/login_controller.dart';
import '../../../utills/ui_buttons.dart';
import '../login_screen.dart';

class ForgetPasswordSuccessScreen extends StatefulWidget {
  const ForgetPasswordSuccessScreen({super.key});

  @override
  State<ForgetPasswordSuccessScreen> createState() => _ForgetPasswordSuccessScreenState();
}

class _ForgetPasswordSuccessScreenState extends State<ForgetPasswordSuccessScreen> {
  @override

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/app_icon.png',
                width: 200,
                height: 200,
              ),
              // SizedBox(height: 50,),
              Text(
                "Congratulation",
                style: CustomeTheme.lightTheme.textTheme.headlineLarge,
              ),
              Text(
                "Your Password is Successfully",
                style: CustomeTheme.lightTheme.textTheme.headlineMedium,
              ),
              Text(
                "Updated",
                style: CustomeTheme.lightTheme.textTheme.headlineSmall,
              ),
              SizedBox(height: 50,),


              CustomPaint(
                size: const Size(150, 150),
                painter: PaintButton(),
                child: Container(width: 300,
                  child: ElevatedButton(
                    onPressed: ()
                    {
                      Get.to(()=>LoginScreen());
                    }, child: Text("To Login",style: CustomeTheme.lightTheme.textTheme.headlineMedium,),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.transparent
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

            ],
          ),
        ));
  }
}
