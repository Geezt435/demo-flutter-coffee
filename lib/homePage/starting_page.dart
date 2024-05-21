import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolab_demo/theme.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  static const String routeName = '/';

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  Widget button() {
    bool isButtonPressed = false;

    void updateButtonText() {
      setState(() {
        isButtonPressed = true;
      });
    }

    String getButtonText() {
      return isButtonPressed ? 'Button Pressed' : 'Get Started';
    }

    // Inside the button() method
    String buttonText = getButtonText();

    return TextButton(
      onPressed: updateButtonText,
      child: Text(
        buttonText,
        style: whiteTextStyle.copyWith(fontWeight: bold),
      ),
    );
  }


  Widget image() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(100),
        bottomRight: Radius.circular(100),
      ),
      child: Image.asset(
        'assets/images/coffee.png',
        height: 500,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // Title
          Text('Coffee so good, your taste buds will love it!',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(fontSize: 30, fontWeight: semibold)),
          const SizedBox(height: 14),

          Text('~ King of Nothing', 
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: light)),
          const SizedBox(height: 14),

          // Subtitle
          Text('The best grain, the finest roast, the powerful flavor',
              textAlign: TextAlign.center,
              style: secondaryTextStyle.copyWith(fontSize: 16, fontWeight: light)),
          const SizedBox(height: 14),

          // Button
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: button())
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor3,
        body: SingleChildScrollView(
          child: Column(
            children: [
              image(), 
              content()
            ],
          ),
        ));
  }
}
