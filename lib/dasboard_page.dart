import 'dart:ui';
import 'package:flutter/material.dart';
import 'signup_page.dart';

class MyDashboardPageWidget extends StatelessWidget {
  const MyDashboardPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('JAILTRACK'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MySignupPageWidget()),
              );
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyDashboardPageWidget()),
              );
            },
            child: const Text('Login', style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image with opacity
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.dstATop),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://i0.wp.com/governmentph.com/wp-content/uploads/2018/09/How-to-Apply-to-BJMP-Process.png?fit=1200%2C628&ssl=1',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea( // Wrap SafeArea around content
            child: Center(
              child: SizedBox(
                width: 400.0, // Adjust width as needed
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 40.0),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add login functionality here
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
     home: MyDashboardPageWidget(),
  ));
}