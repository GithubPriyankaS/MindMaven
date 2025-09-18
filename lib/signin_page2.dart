import 'package:flutter/material.dart';
import 'wave_widget.dart';
import 'home_page.dart';
import 'signup_page2.dart';

class SignInPage2 extends StatelessWidget {
  const SignInPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 924,
        color: Colors.black,
        child: Stack(
          children: [
            /// ---- Title: Login ----
            const Positioned(
              left: 22,
              top: 89,
              child: Text(
                "Login",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 55,
                  height: 22 / 55,
                  color: Color(0xFFF7F7F8),
                ),
              ),
            ),

            /// ---- Email label ----
            const Positioned(
              left: 44,
              top: 210,
              child: Text(
                "Email or Username",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  height: 22 / 24,
                  color: Color(0xFFF7F7F8),
                ),
              ),
            ),

            /// ---- Password label ----
            const Positioned(
              left: 42,
              top: 312,
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

            /// ---- Email box ----
            Positioned(
              left: 44,
              top: 248,
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
                    )
                  ],
                ),
              ),
            ),

            /// ---- Password box ----
            Positioned(
              left: 44,
              top: 346,
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
                    )
                  ],
                ),
              ),
            ),

            /// ---- Eye Icon ----
            const Positioned(
              left: 328,
              top: 352,
              child: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),

            /// ---- Login Button ----
            Positioned(
              left: 43,
              top: 428,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TeacherHomePage(), // 👈 go to teacher home page
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
                    "Login",
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

            /// ---- Or Login with ----
            const Positioned(
              left: 130,
              top: 512,
              child: Text(
                "Or Login with",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),

            /// ---- Google Logo ----
            Positioned(
              left: 140,
              top: 575,
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
              left: 221,
              top: 575,
              child: Image.asset(
                "assets/images/Facebook_logo_img.png",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),

            /// ---- Don’t have an account ----
            const Positioned(
              left: 98,
              top: 673,
              child: Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),

            /// ---- Sign Up Button ----
            Positioned(
              left: 43,
              top: 711,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: Container(
                  width: 326,
                  height: 54,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(200, 255, 226, 0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
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

            /// ---- Small Circle ----
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
              bottom: 0,
              right: 0,
              child: WaveWidget(
                height: 120,
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
