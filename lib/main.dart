// ignore_for_file: library_private_types_in_public_api

import 'package:biller_link/color.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'splashscreen.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(
    MyApp(),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: const SplashScreen(),
      themeMode: ThemeMode.system,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
