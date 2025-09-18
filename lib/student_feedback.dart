import 'package:flutter/material.dart';

class StudentFeedbackPage extends StatelessWidget {
  const StudentFeedbackPage({super.key});

  final List<String> feedbacks = const [
    "Great lecture, ma’am! 🌟",
    "The quiz was tough but helpful.",
    "Could you add more real-world examples?",
    "Loved the video explanation!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Student Feedback", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: feedbacks.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0xFF0BA200),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                feedbacks[index],
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
