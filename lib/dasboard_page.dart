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
        title: Text('JAILTRACK'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MySignupPageWidget()),
              );
            },
            child: Text(
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
            child: Text('Login', style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            // Add your dashboard widgets here
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: const MyDashboardPageWidget(),
    );
  }
}
