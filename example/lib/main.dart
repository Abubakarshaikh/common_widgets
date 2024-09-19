import 'package:flutter/material.dart';
import 'package:flutter_common_components/flutter_common_components.dart';
import 'package:flutter_common_components_example/examples/common_snack_bar_example.dart';
import 'package:flutter_common_components_example/examples/common_text_field_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(
        primary: Colors.green,
        textTheme: GoogleFontsThemeUtil.poppinsTextTheme,
      ).standard(),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Plugin example app',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          CustomElevatedButton(
            onPressed: () {},
            title: "Input Chip",
          ),
          CustomElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CommonTextFieldExample(),
                ),
              );
            },
            title: "Text Field",
          ),
          CustomElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CommonSnackbarExample(),
                ),
              );
            },
            title: "Snackbar",
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
        ),
      ),
    );
  }
}
