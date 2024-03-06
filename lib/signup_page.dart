import 'package:flutter/material.dart';
import 'package:jail_track_jail_facility_web/dasboard_page.dart';

class MySignupPageWidget extends StatelessWidget {
  const MySignupPageWidget({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => const MyDashboardPageWidget()),
              );
            },
            child: Text('Login', style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
      body: Center(
        child: Text('Signup Page Content'),
      ),
    );
  }
}