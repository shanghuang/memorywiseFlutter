import 'package:flutter/material.dart';
import 'package:client/palette.dart';
import 'package:client/views/splash_page.dart';
import 'package:get_it/get_it.dart';
import './graphql/graphql_service.dart';

void main() {
  final locator = GetIt.instance;
  locator.registerSingleton(GraphqlService());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GHSE Forum',
      theme: ThemeData(
        primarySwatch: Palette.BlueToDark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Palette.OrangeToDark,
          selectionColor: Palette.OrangeToDark,
          selectionHandleColor: Palette.OrangeToDark,
        ),
      ),
      home: const SplashPage(),
    );
  }
}
