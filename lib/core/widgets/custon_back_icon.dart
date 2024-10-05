import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsetsDirectional.only(
        start: 16,
        top: 16,
        bottom: 16,
        end: 0,
      ),
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: GoRouter.of(context).pop,
    );
  }
}
