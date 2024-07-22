import 'package:flutter/material.dart';

class PromptScreen extends StatefulWidget {
  const PromptScreen({super.key});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  // Function to navigate back
  void navigateBackFunction() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),

        // Padding around the contents
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 16.0, right: 16.0),

          // Column starts here
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row for arrow back icon and container, back text and history icon and container
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Row for arrow back icon and container and back text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Container for arrow back in GestureDetector
                      GestureDetector(
                        onTap: () {
                          navigateBackFunction();
                        },
                        // Container for arrow back
                        child: Container(
                          padding: const EdgeInsets.all(2.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(100.0),
                          ),

                          // arrow back
                          child: const Icon(
                            Icons.arrow_back,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),

                      // Back text in a padding
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),

                        // Back text
                        child: Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Conatiner for history icon
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(
                        width: 0.4,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),

                    // history icon
                    child: const Icon(
                      Icons.history_edu_rounded,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Column ends here
        ),
      ),
    );
  }
}
