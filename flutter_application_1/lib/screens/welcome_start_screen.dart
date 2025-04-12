import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeStartScreen extends StatelessWidget {
  const WelcomeStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 600;

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
                    // Add more padding on the sides of the text
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),  // Extra padding on the sides
                      child: Text(
                        'Where do you want to start your journey?',
                        style: GoogleFonts.merriweather(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 41, 113, 185),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 60),
                    if (isWideScreen)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildButtonWithText(
                            context,
                            'Choose a country',
                            'Start your adventure\nwhere you desire ✨',
                            () {
                              Get.toNamed('/welcome/choosecountry');
                            },
                          ),
                          const SizedBox(width: 40),
                          _buildButtonWithText(
                            context,
                            'Pick for me',
                            'Let fate decide your\nfirst destination 🔮',
                            () {
                              // TODO: navigate to PickForMeScreen
                            },
                          ),
                        ],
                      )
                    else
                      Column(
                        children: [
                          _buildButtonWithText(
                            context,
                            'Choose a country',
                            'Start your adventure\nwhere you desire ✨',
                            () {
                              Get.toNamed('/welcome/choosecountry');
                            },
                          ),
                          const SizedBox(height: 40),
                          _buildButtonWithText(
                            context,
                            'Pick for me',
                            'Let fate decide your\nfirst destination 🔮',
                            () {
                              // TODO: navigate to PickForMeScreen
                            },
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonWithText(
      BuildContext context, String buttonText, String description, VoidCallback onPressed) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 56, 136, 255),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 32.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              buttonText,
              style: GoogleFonts.dmSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              color: const Color(0xFF2C3E50),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
