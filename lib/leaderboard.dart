import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  final List<Map<String, dynamic>> students = const [
    {"name": "Kavya", "stars": 12, "streak": 20},
    {"name": "Arjun", "stars": 10, "streak": 15},
    {"name": "Meena", "stars": 8, "streak": 10},
    {"name": "Rahul", "stars": 6, "streak": 5},
  ];

  @override
  Widget build(BuildContext context) {
    // Sort by stars descending
    final sortedStudents = List<Map<String, dynamic>>.from(students)
      ..sort((a, b) => b["stars"].compareTo(a["stars"]));

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Leaderboard", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: sortedStudents.length,
        itemBuilder: (context, index) {
          final student = sortedStudents[index];
          return Card(
            color: const Color(0xFF0BA200),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.greenAccent.shade700,
                child: Text(student["name"][0], style: const TextStyle(color: Colors.white)),
              ),
              title: Text(
                student["name"],
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                "🔥 ${student["streak"]} day streak",
                style: const TextStyle(color: Colors.white70),
              ),
              trailing: Text(
                "⭐ ${student["stars"]}",
                style: const TextStyle(fontSize: 22, color: Colors.yellow, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
