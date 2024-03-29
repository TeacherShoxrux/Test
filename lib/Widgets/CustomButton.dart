import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: onPressed,
        child: Text(text,style: TextStyle( color: Colors.white,fontSize: 22
        )),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepPurple),

        ),
    );
  }
}
