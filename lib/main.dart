import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/widget_tree.dart';
import 'package:my_flutter_app/views/widgets/navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

// material app(stateful)
// scafold
// App title
// Bottom Navigation with set state
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: WidgetTree(),
    );
  }
}
