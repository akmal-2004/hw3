import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool logged = false;

  void login() {
    setState(() {
      (logged) ? logged = false : logged = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Icon(
                    (logged) ? Icons.lock_open_rounded : Icons.lock_outline_rounded,
                    size: 100,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    (logged) ? 'Logged successfully' : 'Login',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(height: 16),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {login();},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: const Size(300, 50)
                      ),
                      child: Text((logged) ? 'Logout' : 'Login'),

                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {Navigator.pop(context);},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: const Size(300, 50)
                      ),
                      child: const Text('Go back'),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}