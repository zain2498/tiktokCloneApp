import 'package:flutter/material.dart';
import 'package:tiktokclone/constants.dart';
import 'package:tiktokclone/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            'Tiktok Clone',
            style: TextStyle(
                color: buttonColor, fontSize: 35, fontWeight: FontWeight.w900),
          ),
          const Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputFields(
              controller: _emailController,
              labelText: 'Email',
              icon: Icons.email,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputFields(
              controller: _passwordController,
              labelText: 'Password',
              icon: Icons.lock,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                )),
            child: InkWell(
              onTap: () {
                print('lets Login');
              },
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account ?',
                  style: TextStyle(fontSize: 20)),
              InkWell(
                  onTap: () {
                    print('navigating to user');
                  },
                  child: Text(
                    ' Register',
                    style: TextStyle(fontSize: 20, color: buttonColor),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
