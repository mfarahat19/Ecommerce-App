import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void NavigateToHome(BuildContext context) async {
  Future.delayed(
      Duration(seconds: 4), () => GoRouter.of(context).go(Routes.loginRoute));
}
