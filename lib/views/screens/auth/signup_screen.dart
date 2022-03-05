import 'package:flutter/material.dart';
import 'package:tiktokclone/constants.dart';
import 'package:tiktokclone/views/widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Register',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w900, color: buttonColor),
          ),
          const Text(
            'Signup',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                backgroundColor: Colors.black,
              ),
              Positioned(
                bottom: -8,
                left: 80,
                child: IconButton(
                    onPressed: () {
                      print("take an image");
                    },
                    icon: const Icon(Icons.add_a_photo)),
              )
            ],
          ),
          const SizedBox(height: 25),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputFields(
                controller: _username,
                labelText: 'UserName',
                icon: Icons.person),
          ),
          const SizedBox(height: 25),
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
              )),
          const SizedBox(height: 30),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 40,
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: InkWell(
                onTap: () {
                  print('lets login');
                },
                child: const Center(
                  child: Text(
                    'Signup',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account',
                  style: TextStyle(fontSize: 20)),
              InkWell(
                onTap: () {
                  print('navigate to login page ');
                },
                child: Text(
                  ' Login',
                  style: TextStyle(fontSize: 20, color: buttonColor),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
