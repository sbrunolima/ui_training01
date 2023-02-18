import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:enefty_icons/enefty_icons.dart';

//Widgets
import '../widgets/summary_widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Center(
              child: Text(
                'Purchasing Plans',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                'Step 3/4: Review',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: mediaQuery.width - 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    stepBar(Colors.deepPurple),
                    stepBar(Colors.deepPurple),
                    stepBar(Colors.deepPurple),
                    stepBar(Colors.deepPurple.shade100),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Summary',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$34,90',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        ' / per month',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SummaryWidget(
              'Value Discount',
              'Subscriber + 1',
              '\$9,00',
              Colors.deepPurple.shade700,
              EneftyIcons.health_outline,
              true,
            ),
            SummaryWidget(
              'Vision Plan',
              'Subscriber + 1',
              '\$18,40',
              Colors.blueAccent,
              EneftyIcons.eye_outline,
              true,
            ),
            SummaryWidget(
              'Telemed',
              'Subscriber',
              '\$750',
              Colors.teal.shade300,
              EneftyIcons.call_outline,
              false,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  'CHECKOUT',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal.shade200),
                  shadowColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget stepBar(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 4,
        width: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
