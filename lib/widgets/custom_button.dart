import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, this.buttonText});
  final buttonText;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
