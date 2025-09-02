import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:flutter/material.dart';

void NavigateToHome(BuildContext context) async {
  Future.delayed(Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, Routes.signInRoute));
}
