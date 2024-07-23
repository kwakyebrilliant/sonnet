import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class PromptScreen extends StatefulWidget {
  final VoidCallback showHomeScreen;
  const PromptScreen({super.key, required this.showHomeScreen});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  // Genre list
  final List<String> genres = [
    'Jazz',
    'Rock',
    'Amapiano',
    'R&B',
    'Latin',
    'Hip-Hop',
    'Hip-Life',
    'Reggae',
    'Gospel',
    'Afrobeat',
    'Blues',
    'Country',
    'Punk',
    'Pop',
  ];

  // Selected genres list
  final Set<String> _selectedGenres = {};

  // Function for selected genre(s)
  void _onGenreTap(String genre) {
    setState(() {
      if (_selectedGenres.contains(genre)) {
        _selectedGenres.remove(genre);
      } else {
        _selectedGenres.add(genre);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Conater for contents
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF330000),
              Color(0xFF000000),
            ],
          ),

          // Background image here
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),

        // Padding around contents
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),

          // Columns starts here
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First expanded for randon circles for moods
              // Expanded(
              //   child: RandomCircles(),
              // ),

              // Second expanded for various genres and submit button
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Genre',
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFFFFF).withOpacity(0.8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                          top: 5.0,
                        ),
                        child: Wrap(
                          children: genres.map((genre) {
                            final isSelected = _selectedGenres.contains(genre);
                            return GestureDetector(
                              onTap: () => _onGenreTap(genre),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                margin:
                                    const EdgeInsets.only(right: 4.0, top: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    width: 0.4,
                                    color: const Color(0xFFFFFFFF)
                                        .withOpacity(0.8),
                                  ),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                    right: 16.0,
                                    top: 8.0,
                                    bottom: 8.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? const Color(0xFF0000FF)
                                        : const Color(0xFFFFFFFF)
                                            .withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Text(
                                    genre,
                                    style: GoogleFonts.inter(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: isSelected
                                          ? const Color(0xFFFFFFFF)
                                          : const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 60.0,
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color(0xFFFFCCCC),
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: GoogleFonts.inter(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Columns ends here
        ),
      ),
    );
  }
}

class RandomCircles extends StatelessWidget {
  final Random random = Random();
  final List<Map<String, String>> moodData = [
    {'mood': 'Happy', 'image': 'assets/images/happy.png'},
    {'mood': 'Heartbroken', 'image': 'assets/images/heartbroken.png'},
    {'mood': 'Grateful', 'image': 'assets/images/grateful.png'},
    {'mood': 'Relaxed', 'image': 'assets/images/relaxed.png'},
    {'mood': 'Anxious', 'image': 'assets/images/anxious.png'},
    {'mood': 'Romance', 'image': 'assets/images/romance.png'},
    {'mood': 'Energetic', 'image': 'assets/images/energetic.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        List<Widget> circles = [];
        List<Rect> positions = [];

        for (int i = 0; i < 7; i++) {
          double size =
              random.nextDouble() * 100 + 50; // Size between 50 and 150
          double left, top;
          Rect newPosition;

          // Ensure circles do not overlap
          bool doesOverlap;
          do {
            left = random.nextDouble() * (constraints.maxWidth - size);
            top = random.nextDouble() * (constraints.maxHeight - size);
            newPosition = Rect.fromLTWH(left, top, size, size);

            doesOverlap =
                positions.any((position) => position.overlaps(newPosition));
          } while (doesOverlap);

          positions.add(newPosition);

          Color color = Color.fromARGB(
            255,
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
          );

          circles.add(
            Positioned(
              left: left,
              top: top,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFCCCC).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        moodData[i]['image']!,
                        width: size * 0.8,
                        height: size * 0.8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }

        return Stack(children: circles);
      },
    );
  }
}
