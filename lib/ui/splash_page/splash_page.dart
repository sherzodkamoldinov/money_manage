import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:money_manage/utils/color.dart';
import 'package:money_manage/utils/const.dart';
import 'package:money_manage/utils/text_style.dart';




// ================================================

class SplashPage extends StatefulWidget {
   const SplashPage({super.key});
  

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> opacityTween;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )
      ..addListener(() {
        setState(() {});
      })
      ..forward();

    opacityTween = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();

    // Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.pushReplacementNamed(context, registerPage));
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/splash.json',
              ),
              AnimatedOpacity(
                opacity: _controller.value,
                duration: const Duration(seconds: 2),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'M', style: MyTextStyle.boldInter.copyWith(color: Colors.red, fontSize: 30)),
                      TextSpan(text: 'MANAGER', style: MyTextStyle.boldInter.copyWith(fontSize: 30)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 7),
              AnimatedOpacity(
                opacity: _controller.value,
                duration: const Duration(seconds: 2),
                child: Text(
                  'Your expense manager',
                  style: MyTextStyle.regularInter.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
