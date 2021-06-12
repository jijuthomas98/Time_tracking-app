import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/screens/home_screen.dart';
import 'package:time_tracker_app/screens/sign_in_screen.dart';

class LandinPage extends StatefulWidget {
  const LandinPage({Key? key}) : super(key: key);

  @override
  _LandinPageState createState() => _LandinPageState();
}

class _LandinPageState extends State<LandinPage> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _updateUser(FirebaseAuth.instance.currentUser);
  }

  void _updateUser(User? user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInScreen(
        onSignIn: _updateUser,
      );
    }
    return HomeScreen(
      onSignOut: () => _updateUser(null),
    );
  }
}
