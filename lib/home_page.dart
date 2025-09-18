import 'package:flutter/material.dart';
import 'leaderboard.dart';
import 'prog_track.dart';
import 'official_chatroom.dart';
import 'manage_quizzes.dart';
import 'upload_videos.dart';
import 'student_feedback.dart';

class TeacherHomePage extends StatelessWidget {
  const TeacherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Teacher Dashboard",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Teacher Profile Box
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(138, 242, 142, 0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome, Teacher 👩‍🏫",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      Text(
                        "Manage classes & track progress",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// Dashboard Buttons
            _buildDashboardButton(
              context,
              title: "Leaderboard",
              icon: Icons.leaderboard,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LeaderboardPage()),
                );
              },
            ),
            _buildDashboardButton(
              context,
              title: "Progress Tracking",
              icon: Icons.insights,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProgressTrackPage()),
                );
              },
            ),
            _buildDashboardButton(
              context,
              title: "Upload Videos",
              icon: Icons.video_library,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const UploadVideosPage()),
                );
              },
            ),
            _buildDashboardButton(
              context,
              title: "Manage Quizzes",
              icon: Icons.quiz,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ManageQuizzesPage()),
                );
              },
            ),
            _buildDashboardButton(
              context,
              title: "Student Feedback",
              icon: Icons.feedback,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const StudentFeedbackPage()),
                );
              },
            ),
            _buildDashboardButton(
              context,
              title: "Official Chatroom",
              icon: Icons.chat,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const OfficialChatroomPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Reusable dashboard card widget
  Widget _buildDashboardButton(BuildContext context,
      {required String title, required IconData icon, required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: const Color(0xFF0BA200),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 6,
              )
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Icon(icon, color: Colors.white, size: 40),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 22),
              const SizedBox(width: 15),
            ],
          ),
        ),
      ),
    );
  }
}
