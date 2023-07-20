import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home screen'),
        ),
        drawer: const CustomDrawer(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('is Darkmode:'),
            Divider(),
            Text('Género:'),
            Divider(),
            Text('Nombre de Usuario:'),
            Divider(),
          ],
        ));
  }
}
