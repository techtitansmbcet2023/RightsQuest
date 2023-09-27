import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts

import 'quiz_intro.dart';

class ChaptersTab extends StatelessWidget {
  const ChaptersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0), // Add bottom padding between cards
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuizIntroPage()));
              },
              borderRadius: BorderRadius.circular(10),
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlueAccent,
                ),
                child: Container(
                  width: double.infinity,
                  height: 170,
                  padding: const EdgeInsets.all(16.0), // Add padding inside the card
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chapter", // Title
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 18, // Adjust the font size as needed
                            fontWeight: FontWeight.w600, // Poppins Semibold
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                      // Add additional card content here
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
