import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
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
      // body: Container(
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       colors: [
      //         Color(0xFF330000),
      //         Color(0xFF000000),
      //       ],
      //     ),
      //     image: DecorationImage(
      //       image: AssetImage(
      //         "assets/images/background.png",
      //       ),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Expanded(
      //         child: Padding(
      //           padding:
      //               const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
      //           child: Stack(
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.only(right: 8.0),
      //                     child: Container(
      //                       padding: const EdgeInsets.all(5.0),
      //                       decoration: BoxDecoration(
      //                         border: Border.all(
      //                           color: const Color(0xFFFFFFFF),
      //                           width: 0.4,
      //                         ),
      //                         shape: BoxShape.circle,
      //                       ),
      //                       child: Container(
      //                         height: 35.0,
      //                         width: 35.0,
      //                         decoration: const BoxDecoration(
      //                           color: Color(0xFFFFFFFF),
      //                           shape: BoxShape.circle,
      //                         ),
      //                         child: const Icon(
      //                           Icons.refresh_outlined,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     height: 40.0,
      //                     width: 40.0,
      //                     decoration: BoxDecoration(
      //                       border: Border.all(
      //                         color: const Color(0xFFFFFFFF),
      //                         width: 0.4,
      //                       ),
      //                       shape: BoxShape.circle,
      //                     ),
      //                     child: const Center(
      //                       child: Icon(
      //                         Icons.share_rounded,
      //                         color: Color(0xFFFFFFFF),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),

      //               // Container for image
      //               Padding(
      //                 padding: const EdgeInsets.only(top: 40.0),
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width,
      //                   decoration: const BoxDecoration(
      //                     image: DecorationImage(
      //                       image: AssetImage(
      //                         "assets/images/happy.png",
      //                       ),
      //                       fit: BoxFit.contain,
      //                     ),
      //                   ),
      //                 ),
      //               ),

      //               Padding(
      //                 padding: const EdgeInsets.only(bottom: 20.0),
      //                 child: Align(
      //                   alignment: Alignment.bottomCenter,

      //                   // Container stacked at bottom of image
      //                   child: Container(
      //                     padding: const EdgeInsets.all(3.0),
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(20.0),
      //                       border: Border.all(
      //                         width: 0.4,
      //                         color: const Color(0xFFFFFFFF).withOpacity(0.8),
      //                       ),
      //                     ),

      //                     // Container for mood
      //                     child: Container(
      //                       padding: const EdgeInsets.only(
      //                         left: 16.0,
      //                         right: 16.0,
      //                         top: 8.0,
      //                         bottom: 8.0,
      //                       ),
      //                       decoration: BoxDecoration(
      //                         color: const Color(0xFFFFFFFF).withOpacity(0.8),
      //                         borderRadius: BorderRadius.circular(20.0),
      //                       ),

      //                       // Text for mood
      //                       child: Text(
      //                         'Happy',
      //                         style: GoogleFonts.inter(
      //                           fontSize: 14.0,
      //                           fontWeight: FontWeight.w600,
      //                           color: const Color(0xFF000000),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: Container(
      //           width: MediaQuery.of(context).size.width,
      //           decoration: BoxDecoration(
      //             border: const Border(
      //                 top: BorderSide(
      //               width: 0.4,
      //               color: Color(0xFFFFFFFF),
      //             )),
      //             borderRadius: BorderRadius.circular(12.0),
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.all(16.0),
      //             child: SingleChildScrollView(
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   // Playlist text here
      //                   Text(
      //                     'Playlist',
      //                     style: GoogleFonts.inter(
      //                       fontSize: 16.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: const Color(0xFFFFFFFF).withOpacity(0.8),
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.symmetric(vertical: 8.0),
      //                     child: Container(
      //                       width: MediaQuery.of(context).size.width,
      //                       padding: const EdgeInsets.all(16.0),
      //                       decoration: BoxDecoration(
      //                         color: const Color(0xFFFFCCCC).withOpacity(0.3),
      //                         borderRadius: BorderRadius.circular(30.0),
      //                       ),
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         crossAxisAlignment: CrossAxisAlignment.center,
      //                         children: [
      //                           Row(
      //                             mainAxisAlignment: MainAxisAlignment.start,
      //                             children: [
      //                               Container(
      //                                 padding: const EdgeInsets.all(8.0),
      //                                 decoration: BoxDecoration(
      //                                   color: const Color(0xFFFFCCCC)
      //                                       .withOpacity(0.3),
      //                                   borderRadius:
      //                                       BorderRadius.circular(12.0),
      //                                 ),
      //                                 child: Container(
      //                                   height: 65.0,
      //                                   width: 65.0,
      //                                   decoration: BoxDecoration(
      //                                     color: const Color(0xFFFFFFFF),
      //                                     borderRadius:
      //                                         BorderRadius.circular(12.0),
      //                                     image: const DecorationImage(
      //                                       image: AssetImage(
      //                                         "assets/images/sonnetlogo.png",
      //                                       ),
      //                                       fit: BoxFit.cover,
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ),
      //                               Padding(
      //                                 padding:
      //                                     const EdgeInsets.only(left: 16.0),
      //                                 child: Column(
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: [
      //                                     SizedBox(
      //                                       width: MediaQuery.of(context)
      //                                               .size
      //                                               .width *
      //                                           0.5,
      //                                       child: const Text(
      //                                         'John Doe',
      //                                         style: TextStyle(
      //                                           fontSize: 14.0,
      //                                           fontWeight: FontWeight.w300,
      //                                           color: Color(0xFFFFFFFF),
      //                                           overflow: TextOverflow.ellipsis,
      //                                         ),
      //                                         maxLines: 1,
      //                                       ),
      //                                     ),
      //                                     SizedBox(
      //                                       width: MediaQuery.of(context)
      //                                               .size
      //                                               .width *
      //                                           0.5,
      //                                       child: const Text(
      //                                         'Billionaire',
      //                                         style: TextStyle(
      //                                           fontSize: 16.0,
      //                                           fontWeight: FontWeight.bold,
      //                                           color: Color(0xFFFFFFFF),
      //                                           overflow: TextOverflow.ellipsis,
      //                                         ),
      //                                         maxLines: 1,
      //                                       ),
      //                                     ),
      //                                     SizedBox(
      //                                       width: MediaQuery.of(context)
      //                                               .size
      //                                               .width *
      //                                           0.5,
      //                                       child: const Text(
      //                                         'Hip-Life',
      //                                         style: TextStyle(
      //                                           fontSize: 12.0,
      //                                           fontWeight: FontWeight.w300,
      //                                           color: Color(0xFFFFFFFF),
      //                                           overflow: TextOverflow.ellipsis,
      //                                         ),
      //                                         maxLines: 1,
      //                                       ),
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                           Container(
      //                             height: 25.0,
      //                             width: 25.0,
      //                             decoration: const BoxDecoration(
      //                                 color: Color(0xFFFF0000),
      //                                 shape: BoxShape.circle),
      //                             child: const Center(
      //                               child: Icon(
      //                                 Icons.remove,
      //                                 size: 20.0,
      //                                 color: Color(0xFFFFFFFF),
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // floatingActionButton: Container(
      //   padding: const EdgeInsets.all(8.0),
      //   decoration: BoxDecoration(
      //     color: const Color(0xFFFFCCCC).withOpacity(0.3),
      //     shape: BoxShape.circle,
      //   ),
      //   child: FloatingActionButton(
      //     backgroundColor: const Color(0xFFFFFFFF),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(100.0),
      //     ),
      //     onPressed: () {},
      //     child: const Icon(
      //       Icons.add_outlined,
      //     ),
      //   ),
      // ),

      // Container for contents
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
              Expanded(
                child: RandomCircles(),
              ),

              // Second expanded for various genres and submit button
              Expanded(
                // Padding at the top of various genres and submit button in a column
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),

                  // Column starts here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Genre text here
                      Text(
                        'Genre',
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFFFFF).withOpacity(0.8),
                        ),
                      ),

                      // Padding around variuos genres in a wrap
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                          top: 5.0,
                        ),

                        // Wrap starts here
                        child: Wrap(
                          children: genres.map((genre) {
                            final isSelected = _selectedGenres.contains(genre);
                            return GestureDetector(
                              onTap: () => _onGenreTap(genre),

                              // Container with border around each genre
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

                                // Container for each genre
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

                                  // Text for each genre
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
                        // Wrap ends here
                      ),

                      // Padding around the submit button
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 60.0,
                          left: 10.0,
                          right: 10.0,
                        ),

                        // Container for submit button
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color(0xFFFFCCCC),
                          ),

                          // Submit text centered
                          child: Center(
                            // Submit text here
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
                  // Column ends here
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

// RandomCircles for moods starts here
class RandomCircles extends StatelessWidget {
  // An instance of Dart's Random
  final Random random = Random();

  // Mood data list
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
        // List for various circles and their positioning
        List<Widget> circles = [];
        List<Rect> positions = [];

        // For loop
        for (int i = 0; i < 7; i++) {
          // Size between 50 and 150
          double size = random.nextDouble() * 100 + 50;
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

        // Return stack with various circles
        return Stack(children: circles);
      },
    );
  }
}
