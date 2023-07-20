import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settigns screen'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Setting screen'),
      ),
    );
  }
}
