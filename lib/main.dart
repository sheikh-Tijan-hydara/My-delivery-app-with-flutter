import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/app_bar.dart';
import 'package:my_first_flutter_app/components/main_container.dart';
import 'package:my_first_flutter_app/components/bottom_navigation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBarContainer(),
        ),
        bottomNavigationBar: BottomNavigation(),
        body: Center(child: MainContainer()),
      ),
    );
  }
}
