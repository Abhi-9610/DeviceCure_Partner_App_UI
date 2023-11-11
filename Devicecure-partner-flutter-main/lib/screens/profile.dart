import 'package:flutter/material.dart';

import '../core/extensions.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 100,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.0,
          color: context.primary,
        ),
      ),
    );
  }
}
