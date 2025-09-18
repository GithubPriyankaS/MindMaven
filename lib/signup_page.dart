import 'package:flutter/material.dart';
import 'onboarding_page1.dart';
import 'wave_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 924,
        color: Colors.black,
        child: Stack(
          children: [
            /// ---- Title: Sign up ----
            const Positioned(
              left: 24,
              top: 110,
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 55,
                  height: 22 / 55,
                  color: Color(0xFFF7F7F8),
                ),
              ),
            ),

            /// ---- Labels ----
            const Positioned(
              left: 44,
              top: 216,
              child: Text(
                "Email",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  height: 22 / 24,
                  color: Color(0xFFF7F7F8),
                ),
              ),
            ),
            const Positioned(
              left: 42,
              top: 318,
              child: Text(
                "Password",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  height: 22 / 24,
                  color: Color(0xFFF7F7F8),
                ),
              ),
            ),
            const Positioned(
              left: 42,
              top: 429,
              child: Text(
                "Re-enter Password",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  height: 22 / 24,
                  color: Color(0xFFF7F7F8),
                ),
              ),
            ),

            /// ---- Input boxes ----
            Positioned(
              left: 44,
              top: 254,
              child: Container(
                width: 325,
                height: 41,
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F8),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 44,
              top: 352,
              child: Container(
                width: 325,
                height: 41,
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F8),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 44,
              top: 463,
              child: Container(
                width: 325,
                height: 41,
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F8),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),

            /// ---- Eye icon for password ----
            const Positioned(
              left: 328,
              top: 358,
              child: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),

            /// ---- Sign up Button ----
            Positioned(
              left: 43,
              top: 705,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingPage1(),
                    ),
                  );
                },
                child: Container(
                  width: 326,
                  height: 54,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0BA200),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontFamily: "Ariom",
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color(0xFFE3E3E8),
                    ),
                  ),
                ),
              ),
            ),

            /// ---- Or Sign up with ----
            const Positioned(
              left: 114,
              top: 527,
              child: Text(
                "Or Sign up with",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  height: 22 / 20,
                  color: Colors.white,
                ),
              ),
            ),

            /// ---- Google Logo ----
            Positioned(
              left: 142,
              top: 589,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(112.5),
                child: Image.asset(
                  "assets/images/Google_logo_img.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /// ---- Facebook Logo ----
            Positioned(
              left: 226,
              top: 589,
              child: Image.asset(
                "assets/images/Facebook_logo_img.png",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),

            /// ---- Blob ----
            Positioned(
              left: 287,
              top: 59,
              child: Transform.rotate(
                angle: 31.2 * 3.1416 / 180,
                child: Image.asset(
                  "assets/images/blob-1-opacity-100.gif",
                  width: 101.25,
                  height: 101.25,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            /// ---- Small circle ----
            Positioned(
              left: 307,
              top: 170,
              child: Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  color: Color(0xFF0BA200),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            /// ---- Wave at bottom ----
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: WaveWidget(
                height: 150,
                color: Color(0xFF0BA200),
                speed: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
