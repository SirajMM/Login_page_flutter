// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_login/home.dart';
import 'package:ui_login/login.dart';
import 'package:ui_login/main.dart';
// import 'package:login_page/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    checkLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/bg_removed_logo.png')),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => LoginScreen(),
      ),
    );
  }

  Future<void> checkLoggedIn() async {
    final _sharedPrfs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedPrfs.getBool(Save_Key);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => const HomeScreen()));
    }
  }
}
