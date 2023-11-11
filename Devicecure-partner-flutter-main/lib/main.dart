import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/login_page.dart';
import 'theme/theme_constants.dart';
import 'widgets/provider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => JobProvider(),
          ),
        ],
        child: const LoginPage(),
      ),
    ),
  );
}
