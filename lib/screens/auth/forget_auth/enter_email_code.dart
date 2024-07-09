import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/theme.dart';
import '../../../controllers/enter_code_controller.dart';
import '../../../controllers/login_controller.dart';
import '../../../utills/ui_buttons.dart';
import 'forget_password_successfull_screen.dart';

class Enter_Email_Code extends StatefulWidget {
  const Enter_Email_Code({super.key});

  @override
  State<Enter_Email_Code> createState() => _Enter_Email_CodeState();
}

class _Enter_Email_CodeState extends State<Enter_Email_Code> {
  @override

  EnterCodeController enterCodeController = Get.put(EnterCodeController());

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/app_icon.png',
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    "Enter Code",
                    style: CustomeTheme.lightTheme.textTheme.headlineLarge,
                  ),
                  Text(
                    "Check Your Email and write 4 digit code",
                    style: CustomeTheme.lightTheme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 100,),
                  CustomPaint(

                    size: const Size(150, 150),
                    painter: PaintButton(),
                    child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: enterCodeController.codeController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Code",
                          hintStyle: CustomeTheme.lightTheme.textTheme.headlineSmall,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 50, right: 30),
                            child: Image.asset("assets/icons/password.png",width: 25,height: 25,),
                          ),
                          // icon: Image.asset("assets/icons/email.png"),
                        )
                    ),
                  ),
                  SizedBox(height: 300),

                  CustomPaint(
                    size: const Size(150, 150),
                    painter: PaintButton(),
                    child: Container(width: 300,
                      child: ElevatedButton(
                        onPressed: ()
                        {
                          Get.to(()=>ForgetPasswordSuccessScreen());
                        }, child: Text("Confirmed",style: CustomeTheme.lightTheme.textTheme.headlineMedium,),
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
            ),
          ),
        ));
  }
}
