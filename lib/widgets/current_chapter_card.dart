import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../views/quiz_intro.dart';

class CurrentChapterCard extends StatelessWidget {
  const CurrentChapterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF009099),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 50, // Adjust the top position as needed
            left: 30, // Adjust the left position as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Introduction\nTo Your\nRights",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 36, // Adjust the font size as needed
                      fontWeight: FontWeight.w800, // Poppins Extra Bold
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add spacing between text and button
                InkWell(
                  onTap: () {
                    // Navigate to the QuizIntroPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizIntroPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Continue Chapter",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
