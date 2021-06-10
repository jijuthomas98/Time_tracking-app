import 'package:flutter/material.dart';
import 'package:time_tracker_app/widgets/custom_sign_in_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Time Tracker'),
      ),
      body: _renderSignInOptions(),
      backgroundColor: Colors.grey[300],
    );
  }

  Widget _renderSignInOptions() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 30),
          CustomSignInButton(
            text: 'Sign in with Google',
            buttonColor: Colors.white,
            buttonHeight: 60,
            onPressed: () {},
            logoPath: 'assets/images/google-logo.png',
          ),
          SizedBox(height: 10),
          CustomSignInButton(
            text: 'Sign in with Facebook',
            textColor: Colors.white,
            buttonColor: Color(0xFF334D92),
            buttonHeight: 60,
            onPressed: () {},
            logoPath: 'assets/images/facebook-logo.png',
          ),
          SizedBox(height: 10),
          CustomSignInButton(
            text: 'Sign in with email',
            textColor: Colors.white,
            buttonColor: Colors.teal,
            buttonHeight: 60,
            onPressed: () {},
          ),
          Text(
            'or',
            textAlign: TextAlign.center,
          ),
          CustomSignInButton(
            text: 'Go anonymous',
            buttonColor: Colors.amberAccent,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
