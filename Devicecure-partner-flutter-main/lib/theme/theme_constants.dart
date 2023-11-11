import 'package:flutter/material.dart';

const double kDefaultPadding = 16.0;

const blue = Color(0xFF271A60);
const yellow = Color(0xFFFFDA58);
const green = Color(0xFF60C84F);
const green10 = Color(0xFF29D99D);
const green100 = Color(0xFF8DD92B);
const white70 = Color(0xB3FFFFFF);
const white80 = Color(0xDFFFFFFF);
const blue100 = Color(0xFFF30153);
const blue50 = Color(0xFFFFEBF6);
const red = Color(0xFFff3333);
const grey = Color(0xFFCFCFCF);
const gray100 = Color(0xFFD2D2D2);
const gray0 = Color(0xFFFAFAFA);
const gray50 = Color(0xFFF0F0F0);
const grayText = Color(0xFF656565);
const gray400 = Color(0xFF535353);
final shadowColor = gray100.withOpacity(0.5);
const black = Color(0xff001F25);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: blue,
  onPrimary: Colors.white,
  primaryContainer: blue,
  onPrimaryContainer: Colors.white,
  secondary: blue,
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFEDDCFF),
  onSecondaryContainer: Color(0xFF280056),
  tertiary: blue,
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFEDDCFF),
  onTertiaryContainer: Color(0xFF280056),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF8FDFF),
  onBackground: black,
  surface: Color(0xFFF8FDFF),
  onSurface: black,
  surfaceVariant: Color(0xFFE8E0EB),
  onSurfaceVariant: Color(0xFF4A454E),
  outline: Color(0xFF7B757F),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: blue,
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFF2F3FC),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: blue,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Poppins',
  // backgroundColor: gray100,
  elevatedButtonTheme: lightElevatedThemeData,
  textButtonTheme: lightTextButtonThemeData,
  textTheme: lightTextTheme,
  primaryTextTheme: lightTextTheme,
  colorScheme: lightColorScheme,
  inputDecorationTheme: lightInputDecorationTheme,
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all<Color>(blue),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all<Color>(blue),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: blue,
    disabledElevation: 0,
  ),
  appBarTheme: AppBarTheme(
    color: lightColorScheme.primary,
    iconTheme: IconThemeData(color: lightColorScheme.onPrimary),
    titleTextStyle: lightTextTheme.bodyLarge,
  ),
);

// [[ LIGHT ELEVATED BUTTON THEME DATA ]] ==============
ElevatedButtonThemeData lightElevatedThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(blue),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    textStyle: MaterialStateProperty.all<TextStyle?>(lightTextTheme.bodyLarge),
  ),
);

TextButtonThemeData lightTextButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    textStyle: MaterialStateProperty.all<TextStyle?>(lightTextTheme.bodyLarge),
  ),
);

TextTheme lightTextTheme = TextTheme(
  bodyLarge: TextStyle(
    fontSize: 16,
    color: lightColorScheme.onBackground,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    color: lightColorScheme.onBackground,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    color: lightColorScheme.onBackground,
  ),
  titleSmall: TextStyle(
    fontSize: 18,
    color: lightColorScheme.onBackground,
  ),
  titleMedium: TextStyle(
    fontSize: 20,
    color: lightColorScheme.onBackground,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    color: lightColorScheme.onBackground,
  ),
  headlineSmall: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: lightColorScheme.onBackground,
  ),
  headlineMedium: TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: lightColorScheme.onBackground,
  ),
  headlineLarge: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: lightColorScheme.onBackground,
  ),
);

InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  iconColor: MaterialStateColor.resolveWith(_resolveIconColor),
  hintStyle: lightTextTheme.bodyLarge?.copyWith(
    color: grey,
  ),
  focusColor: blue,
);

Color _resolveIconColor(Set<MaterialState> states) {
  if (!states.contains(MaterialState.focused)) {
    return grey;
  } else {
    return blue;
  }
}

InputDecoration inputDecoration(
        {required String hintText, Widget? suffixIcon}) =>
    InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black12),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: red),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: blue, width: 2),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: red, width: 2),
      ),
      hintText: hintText,
      counterText: '',
      suffixIcon: suffixIcon,
    );
