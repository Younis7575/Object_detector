import 'package:flutter/material.dart';

class UIBG extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background/my_image.png"),
                fit: BoxFit.cover,
              ),
            ),
                );
  }
}