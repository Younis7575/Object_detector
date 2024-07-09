import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constant/theme.dart';
import '../../../utills/ui_buttons.dart';
import '../login_screen.dart';

class PhoneSuccessScreen extends StatefulWidget {
  const PhoneSuccessScreen({super.key});

  @override
  State<PhoneSuccessScreen> createState() => _PhoneSuccessScreenState();
}

class _PhoneSuccessScreenState extends State<PhoneSuccessScreen> {
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
                "Your are Successfully Signup",
                style: CustomeTheme.lightTheme.textTheme.headlineMedium,
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
