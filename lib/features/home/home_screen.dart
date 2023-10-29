import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/database/sample.dart';
import 'package:os_memory_game/features/home/add_user_screen.dart';
import 'package:os_memory_game/features/home/widgets/home_button._wiget.dart';
import 'package:os_memory_game/features/rank/rank_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static Sample sample = Sample();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // print(getDatabasesPath());
    // print(Sample().gameModelList);

    // print(GameDBQuery.getModelListDB());

    void onStartPressed() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AddUserScreen(),
        ),
      );
    }

    void onRankPressed() {
      Navigator.pushReplacement(
        context,
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
                left: 180,
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontFamily: "Maple-Bold",
                    fontSize: 280,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
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
                left: 180,
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 280,
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
                top: 430,
                left: 50,
                child: Text(
                  '꼬치꼬치',
                  style: TextStyle(
                    fontFamily: "Maple-Bold",
                    fontSize: 280,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
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
                top: 430,
                left: 50,
                child: Text(
                  "꼬치꼬치",
                  style: TextStyle(
                    fontSize: 280,
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
              )),
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
