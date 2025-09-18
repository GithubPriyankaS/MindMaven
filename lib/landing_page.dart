import 'package:flutter/material.dart';
import 'wave_widget.dart';
import 'signin_page2.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /// 🔹 Floating Blob Image
          Positioned(
            right: 30,
            top: 80,
            child: Transform.rotate(
              angle: 31.2 * 3.14159 / 180,
              child: Image.asset(
                "assets/images/blob-1-opacity-100.gif",
                width: 100,
                height: 100,
              ),
            ),
          ),

          /// 🔹 Small Green Dot
          Positioned(
            right: 50,
            top: 180,
            child: Container(
              width: 15,
              height: 15,
              decoration: const BoxDecoration(
                color: Color(0xFF0BA200),
                shape: BoxShape.circle,
              ),
            ),
          ),

          /// 🔹 Text Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome!",
                  style: TextStyle(
                    fontFamily: 'Ariom',
                    fontWeight: FontWeight.w800,
                    fontSize: 50,
                    height: 1.2,
                    color: Color(0xFF0BA200),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Sign in as,",
                  style: TextStyle(
                    fontFamily: 'Ariom',
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                    height: 1.2,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          /// 🔹 Buttons
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Student Button
                _buildButton(context, "Student", () {
                  Navigator.pushNamed(context, "/signin");
                }),
                const SizedBox(height: 30),

                // Faculty Button -> Open SignUpPage2
                _buildButton(context, "Faculty", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage2(),
                    ),
                  );
                }),
              ],
            ),
          ),

          /// 🔹 Animated Wave at Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: WaveWidget(
              color: const Color(0xFF0BA200),
              height: 120,
              speed: 1.2,
            ),
          ),
        ],
      ),
    );
  }

  /// Reusable button builder
  Widget _buildButton(BuildContext context, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 256,
        height: 66,
        decoration: BoxDecoration(
          color: const Color(0xFF0BA200),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontFamily: 'Ariom',
              fontWeight: FontWeight.w800,
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
