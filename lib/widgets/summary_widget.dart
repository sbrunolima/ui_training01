import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:enefty_icons/enefty_icons.dart';

class SummaryWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final Color color;
  final IconData titleIcon;
  bool divider;

  SummaryWidget(
    this.title,
    this.subtitle,
    this.price,
    this.color,
    this.titleIcon,
    this.divider,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    titleIcon,
                    color: color,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Text(
                price,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    EneftyIcons.profile_outline,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    subtitle,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                'per month',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (divider)
            Divider(
              color: Colors.grey.shade300,
              thickness: 2,
            ),
        ],
      ),
    );
  }
}
