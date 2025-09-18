import 'package:flutter/material.dart';

class ProgressTrackPage extends StatelessWidget {
  const ProgressTrackPage({super.key});

  // Example: fake progress % (0–100). Replace with dynamic values later.
  final int progress = 65;

  @override
  Widget build(BuildContext context) {
    // Scale factor: 0.4 (tiny sapling) → 1.0 (fully grown)
    final double scale = (0.4 + (progress / 100) * 0.6);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Progress Tracker",
            style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Animated Cute Tree
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.4, end: scale),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value,
                  child: _CuteTree(),
                );
              },
            ),

            const SizedBox(height: 20),

            /// Progress %
            Text(
              "Growth: $progress%",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            /// Progress Bar
            LinearProgressIndicator(
              value: progress / 100,
              color: Colors.greenAccent,
              backgroundColor: Colors.white12,
              minHeight: 12,
            ),
          ],
        ),
      ),
    );
  }
}

/// 🌳 Custom Cute Tree Widget
class _CuteTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 220,
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// Trunk
          Positioned(
            bottom: 0,
            child: Container(
              width: 40,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFF8B5A2B), // brown
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          /// Tree Leaves (cute cloud style)
          Positioned(
            top: 40,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.green.shade400,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 30,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green.shade500,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 30,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 10,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
