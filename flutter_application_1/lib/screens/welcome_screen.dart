import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE6), 
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Read the World',
                      style: GoogleFonts.merriweather(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 41, 113, 185),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Expand your worldview\nthrough stories 🌍',
                      style: GoogleFonts.dmSans(
                        fontSize: 18,
                        color: const Color(0xFF2C3E50),
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/welcome/start');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 56, 136, 255), 
                  foregroundColor: Colors.white, 
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 32.0), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), 
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.dmSans( 
                    fontSize: 16, 
                    fontWeight: FontWeight.w500, 
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
