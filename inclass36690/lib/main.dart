import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Profile App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Light gray background
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image with Verification Badge
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      // Replace this Icon with an AssetImage if you have the avatar image downloaded
                      // backgroundImage: AssetImage('assets/avatar.png'),
                      child: Icon(Icons.person, size: 80, color: Colors.black54),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // Divider
            const Divider(color: Colors.black87, thickness: 1.2),
            const SizedBox(height: 20),
            
            // Name Section
            const Text(
              'Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Keshan Panditharathna',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 24),
            
            // Email Section
            const Text(
              'Email',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.email, size: 20),
                SizedBox(width: 10),
                Text(
                  'keshan.p@project.com',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Points Section
            const Text(
              'Points',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.star, size: 20),
                SizedBox(width: 10),
                Text(
                  '0',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          // Add your action here
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}