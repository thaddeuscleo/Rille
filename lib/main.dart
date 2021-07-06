import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rille/pages/home-page.dart';
import 'package:rille/providers/theme.dart';
import 'package:rille/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (context) {
        return ThemeProvider(isDarkMode);
      },
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'RILLE',
            theme: themeProvider.getTheme,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
