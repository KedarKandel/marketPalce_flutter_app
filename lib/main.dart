import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/notifiers.dart';
import 'package:my_flutter_app/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

// material app(stateful)
// scafold
// App title
// Bottom Navigation with set state
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
