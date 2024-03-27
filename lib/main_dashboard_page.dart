import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jail_track_jail_facility_web/notification_page.dart';
import 'package:jail_track_jail_facility_web/officer_request_page.dart';
import 'dasboard_page.dart';
import 'signup_page.dart';

class MyMainDashboardPageWidget extends StatelessWidget {
  const MyMainDashboardPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('JAILTRACK'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyDashboardPageWidget()),
              );
            },
            child: const Text('Logout', style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                // Navigate to Dashboard page
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyMainDashboardPageWidget()));
              },
            ),
            ListTile(
              title: Text('Notification'),
              onTap: () {
                // Navigate to Notification page
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyNotificationPageWidget()));
              },
            ),
            ListTile(
              title: Text('Scheduling System'),
              onTap: () {
                // Navigate to Scheduling System page
                Navigator.pop(context); // Close the drawer
                // Add navigation logic here
              },
            ),
            ListTile(
              title: Text('View Officers'),
              onTap: () {
                // Navigate to View Officers page
                Navigator.pop(context); // Close the drawer
               
              },
            ),
             ListTile(
              title: Text('Officer Request'),
              onTap: () {
                // Navigate to View Officers page
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyOfficerRequestPageWidget()));
              },
            ),
             ListTile(
              title: Text('Attendance List'),
              onTap: () {
                // Navigate to View Officers page
                Navigator.pop(context); // Close the drawer
                // Add navigation logic here
              },
            ),
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Stack(
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  width: 400,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Main Dashboard',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: MyMainDashboardPageWidget(),
  ));
}
