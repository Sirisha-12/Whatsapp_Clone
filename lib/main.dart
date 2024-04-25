import 'package:flutter/material.dart';
import 'package:whattsapp_ui/homepage.dart';
import 'package:whattsapp_ui/widgets/chatpage.dart';
import 'package:whattsapp_ui/widgets/settingswidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xff075e55),
        ),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "settings": (context) => const Settings(),
        "chatpage": (context) => const ChatPage(),
      },
    );
  }
}
