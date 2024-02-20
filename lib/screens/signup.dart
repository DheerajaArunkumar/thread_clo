import 'package:flutter/material.dart';
import 'package:thread_clo/screens/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  "assets/images/threads.png",
                  width: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: 'Enter your Full Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: 'Enter your User Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Sign UP"),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ),
              ),
              const Divider(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Alredy have an accont yet?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      "'Login up'",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
