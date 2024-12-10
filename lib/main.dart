import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // Untuk kReleaseMode
import 'package:qrcode_project/screen/home_screen.dart';
import 'package:qrcode_project/screen/qr_generator_screen.dart';
import 'package:qrcode_project/screen/qr_scanner_screen.dart';
import 'package:qrcode_project/screen/splash_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Aktifkan hanya pada mode debug
      builder: (context) => const MainApp(), // Bungkus aplikasi dengan DevicePreview
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // Gunakan media query dari DevicePreview
      locale: DevicePreview.locale(context), // Locale berdasarkan DevicePreview
      builder: DevicePreview.appBuilder, // Builder dari DevicePreview
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/create': (context) => const QrGeneratorScreen(),
        '/scan': (context) => const QrScannerScreen(),
      },
      initialRoute: '/',
    );
  }
}
