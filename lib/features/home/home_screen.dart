import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/argument/argument_screen.dart';

import 'package:os_memory_game/features/home/widgets/home_button._wiget.dart';

import 'package:os_memory_game/features/rank/rank_screen.dart';

// List<Map<String, dynamic>> buttonImages = [
//   {'imageName': 'eggplant.png', 'boxColor': const Color(0xFF60305F)},
//   {'imageName': 'meat.png', 'boxColor': const Color(0xFFCB4144)},
//   {'imageName': 'tomato.png', 'boxColor': const Color(0xFFEC4A4A)},
//   {'imageName': 'potato.png', 'boxColor': const Color(0xffC49C4A)},
//   {'imageName': 'shrimp.png', 'boxColor': const Color(0xffFC5428)},
//   {'imageName': 'bacon.png', 'boxColor': const Color(0xffD85849)},
//   {'imageName': 'broccoli.png', 'boxColor': const Color(0xff8BA442)},
//   {'imageName': 'carrot.png', 'boxColor': const Color(0xffEE771B)},
//   {'imageName': 'cheese.png', 'boxColor': const Color(0xffF7BA00)},
//   {'imageName': 'corn.png', 'boxColor': const Color(0xffFEDF49)},
// ];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // print(GameDBQuery.getModelListDB());

    void onStartPressed() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ArgumentScreen(),
        ),
      );
    }

    void onRankPressed() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const RankScreen(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Stack(
        children: [
          Icon(
            Icons.store,
            size: screenWidth,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          ),
          Stack(
            children: [
              Positioned(
                top: 100,
                left: 100,
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontFamily: "Maple-Bold",
                    fontSize: screenWidth * 0.28,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 40
                      ..color = Colors.white,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        speed: const Duration(seconds: 0),
                        'OO네',
                      )
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 100,
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: screenWidth * 0.28,
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    fontFamily: "Maple-Bold",
                    fontWeight: FontWeight.w800,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        speed: const Duration(seconds: 0),
                        'OO네',
                      )
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                top: 350,
                left: 30,
                child: Text(
                  '꼬치꼬치',
                  style: TextStyle(
                    fontFamily: "Maple-Bold",
                    fontSize: screenWidth * 0.27,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 40
                      ..color = Colors.white,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 350,
                left: 30,
                child: Text(
                  "꼬치꼬치",
                  style: TextStyle(
                    fontSize: screenWidth * 0.27,
                    color: Theme.of(context).colorScheme.tertiary,
                    fontFamily: "Maple-Bold",
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: screenHeight * 0.22,
            left: screenWidth * 0.1,
            child: HomeButtonWidget(
              onPressed: onStartPressed,
              buttonName: '게임시작',
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.05,
            left: screenWidth * 0.1,
            child: HomeButtonWidget(
              onPressed: onRankPressed,
              buttonName: '랭킹',
            ),
          ),
        ],
      ),
    );
  }
}
