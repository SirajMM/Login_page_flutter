import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_login/home.dart';
import 'package:ui_login/main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDataMatched = false;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            SystemNavigator.pop();
          },
        ),
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      hintText: 'User name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username Required';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      hintText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password Required';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Visibility(
                      visible: _isDataMatched,
                      child: const Text(
                        'Invalid Username or Password',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {
                        _formkey.currentState!.validate();
                        checkLogin(context);
                      },
                      icon: const Icon(Icons.login),
                      label: const Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;

    if (_username == 'siraj' && _password == '12345') {
      final _sharedPrfs = await SharedPreferences.getInstance();
      await _sharedPrfs.setBool(Save_Key, true);

      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => const HomeScreen()));
    } else if (_username == null ||
        _password == null ||
        _username.isEmpty ||
        _password.isEmpty) {
      setState(() {
        _isDataMatched = false;
      });
    } else {
      setState(() {
        _isDataMatched = true;
      });
    }
  }
}
