import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Page Title
              Text(
                "Your Space!",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              // Personal Section
              Text(
                "Personal",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // User Card
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF0BA200),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.person, color: Colors.white, size: 30),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        "Kavya",
                        style: TextStyle(
                          fontFamily: "Ariom",
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "⭐",
                              style: TextStyle(fontSize: 28),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "4",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "🔥",
                              style: TextStyle(fontSize: 24),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "20",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Application Section
              Text(
                "Application",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Menu Options
              _buildMenuBox(Icons.notifications, "Notifications"),
              const SizedBox(height: 16),
              _buildMenuBox(Icons.settings, "Settings"),
              const SizedBox(height: 16),
              _buildMenuBox(Icons.feedback, "Feedback"),
              const SizedBox(height: 16),
              _buildMenuBox(Icons.exit_to_app, "Sign out"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuBox(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF0BA200),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.white),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: "Ariom",
                fontWeight: FontWeight.w800,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
