import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/mixin/init_resources.dart';
import 'package:portfolio/presentation/home.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with InitResourcesMixin<RootApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('pt', 'BR')],
      title: 'Jonathan Vegas Peixoto',
      theme: ThemeData(
        primaryColor: Colors.teal,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
