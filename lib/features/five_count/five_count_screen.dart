import 'package:flutter/material.dart';

class FiveCountScreen extends StatefulWidget {
  const FiveCountScreen({Key? key}) : super(key: key);

  @override
  _FiveCountScreenState createState() => _FiveCountScreenState();
}

class _FiveCountScreenState extends State<FiveCountScreen> {
  int countdown = 5;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    Future.delayed(const Duration(seconds: 1), () {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
        startCountdown();
      } else {
        // 카운트 다운이 끝나면 원하는 작업을 수행할 수 있습니다.
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          '카운트 다운: $countdown 초',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 100,
          ),
        ),
      ),
    );
  }
}
