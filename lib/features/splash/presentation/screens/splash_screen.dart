import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/features/splash/presentation/widgets/navigate_to.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NavigateToHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.primary,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Lottie.asset("assets/jsons/logo.json", height: 220),
        ),
      ),
    );
  }
}
