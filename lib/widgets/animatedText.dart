import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class animatedText extends StatelessWidget {
  const animatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Rahul Bera",
                  speed: Duration(milliseconds: 100),
                  textStyle: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(
                  "Hello ",
                  duration: Duration(milliseconds: 4000),
                  textStyle: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 243, 110, 33)),
                ),
                RotateAnimatedText(
                  "Butifull ",
                  duration: Duration(milliseconds: 4000),
                  textStyle: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 75, 243, 33)),
                ),
                RotateAnimatedText(
                  " World",
                  duration: Duration(milliseconds: 4000),
                  textStyle: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText("Wellcome",
                    textStyle: TextStyle(fontSize: 23)),
                WavyAnimatedText("Geeks", textStyle: TextStyle(fontSize: 18))
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            )
          ],
        ),
      ),
    );
  }
}
