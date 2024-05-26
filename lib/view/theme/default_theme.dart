import 'package:flutter/material.dart';

/// Default theme.
final defaultTheme = ThemeData(
  textTheme: _textTheme(),
  colorScheme: _colorScheme(),
  pageTransitionsTheme: _pageTransitionsTheme(),
);

TextTheme _textTheme() {
  return const TextTheme(
    displayLarge: TextStyle(fontSize: 57),
    displayMedium: TextStyle(fontSize: 45),
    displaySmall: TextStyle(fontSize: 36),
    headlineLarge: TextStyle(fontSize: 32),
    headlineMedium: TextStyle(fontSize: 28),
    headlineSmall: TextStyle(fontSize: 24),
    titleLarge: TextStyle(fontSize: 22),
    titleMedium: TextStyle(fontSize: 16),
    titleSmall: TextStyle(fontSize: 14),
    bodyLarge: TextStyle(fontSize: 20),
    bodyMedium: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 12),
  );
}

ColorScheme _colorScheme() {
  return ColorScheme.fromSwatch(
    primarySwatch: Colors.grey,
    accentColor: Colors.lime,
    errorColor: Colors.red,
  );
}

PageTransitionsTheme _pageTransitionsTheme() {
  return const PageTransitionsTheme(
    builders: {
      // androidでもswipeによる戻りを可能とする為、Cupertino styleを採用
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );
}
