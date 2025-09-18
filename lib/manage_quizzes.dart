import 'package:flutter/material.dart';

class ManageQuizzesPage extends StatelessWidget {
  const ManageQuizzesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Manage Quizzes", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            // TODO: Implement quiz creation/upload
          },
          icon: const Icon(Icons.add_circle, color: Colors.white),
          label: const Text("Create New Quiz", style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ),
    );
  }
}
