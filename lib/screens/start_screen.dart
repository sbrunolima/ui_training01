import 'package:flutter/material.dart';
import 'package:enefty_icons/enefty_icons.dart';

//Screens
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

//Widgets
import '../widgets/my_icon_button.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  PageController _myPage = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _myPage,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          ProfileScreen(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple.shade100,
        onPressed: () {},
        child: CircleAvatar(
          backgroundColor: Colors.deepPurple.shade100,
          maxRadius: 30,
          child: const Icon(
            EneftyIcons.add_outline,
            size: 40,
            color: Colors.deepPurple,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                  });
                },
                child: MyIconButton(EneftyIcons.home_2_bold, true),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                  });
                },
                child: MyIconButton(EneftyIcons.message_text_outline, false),
              ),
              const SizedBox(width: 20),
              MyIconButton(EneftyIcons.heart_outline, false),
              MyIconButton(EneftyIcons.profile_outline, false),
            ],
          ),
        ),
      ),
    );
  }
}
