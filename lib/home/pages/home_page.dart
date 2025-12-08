import 'package:flutter/material.dart';

class HomeRepository {}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Bar Page"),
        backgroundColor: Colors.grey.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Home Page",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Mobile Programming Final Project",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "This application demonstrates multiple Flutter concepts required "
              "for the final exam, including:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(Icons.login, color: Colors.orange, size: 28),
                SizedBox(width: 10),
                Text(
                  "Authentication",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 38.0, top: 4),
              child: Text("• Login using BLoC + TextController"),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(Icons.article, color: Colors.orange, size: 28),
                SizedBox(width: 10),
                Text(
                  "News Page",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 38.0, top: 4),
              child: Text(
                  "• Fetch and display news with BLoC\n• Pulls data from JSONPlaceholder API"),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(Icons.note, color: Colors.orange, size: 28),
                SizedBox(width: 10),
                Text(
                  "Post Page",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 38.0, top: 4),
              child: Text(
                  "• View single post details\n• Open external link via URL Launcher"),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(Icons.animation, color: Colors.orange, size: 28),
                SizedBox(width: 10),
                Text(
                  "Animation Page",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 38.0, top: 4),
              child: Text("• Icon animation using AnimationController + BLoC"),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Text(
                "Final Project Submission\nLab 7 + Lab 8 + Animation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
