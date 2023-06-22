import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool IsPassHide = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.topEnd,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blueAccent,
                ),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: IsPassHide,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.blueAccent,
                ),
                hintText: 'Password',
                suffixIcon: InkWell(
                  onTap: _onPressVisable,
                  child: Icon(
                      IsPassHide ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: _ForgotPass,
                  child: const Text(
                    'Forgot Password?',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'HomeScreen');
                },
                child: const Center(child: Text('Login')))
          ],
        ),
      ),
    );
  }

  void _ForgotPass() {
    Navigator.pushNamed(context, 'FrogotPassScreen');
  }

  void _onPressVisable() {
    setState(() {
      IsPassHide = !IsPassHide;
    });
  }
}
