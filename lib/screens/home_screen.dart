import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.transparent],
                transform: GradientRotation(math.pi / 8),
              ).createShader(
                  Rect.fromLTRB(-250, 100, rect.width, rect.height - 300));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/05.jpg',
              height: mediaQuery.height,
              width: mediaQuery.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: mediaQuery.height - 650,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Container(
                width: 200,
                child: Text(
                  'Good morning, David!',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w300,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.height - 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rate your last visit',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 100,
                    width: mediaQuery.width - 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade100),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 17),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/doc.jpg',
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Kashif Norman',
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Therapist',
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepPurple.shade100,
                                maxRadius: 26,
                                child: const Icon(
                                  EneftyIcons.arrow_right_4_outline,
                                  size: 30,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
