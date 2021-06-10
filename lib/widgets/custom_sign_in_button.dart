import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  const CustomSignInButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.textColor: Colors.black,
    required this.buttonColor,
    this.buttonHeight: 50,
    this.logoPath,
  }) : super(key: key);
  final String text;
  final VoidCallback? onPressed;
  final Color textColor;
  final Color buttonColor;
  final double buttonHeight;
  final String? logoPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: buttonColor),
        onPressed: onPressed,
        child: logoPath == null
            ? Text(
                text,
                style: TextStyle(color: textColor),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(logoPath!),
                  Text(
                    text,
                    style: TextStyle(color: textColor),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset(logoPath!),
                  ),
                ],
              ),
      ),
    );
  }
}
