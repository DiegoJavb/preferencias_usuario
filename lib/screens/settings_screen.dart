import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkmode = false;
  int gender = 1;
  String name = 'Diego';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settigns screen'),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile(
                value: isDarkmode,
                title: const Text('Darkmode'),
                onChanged: (value) {
                  isDarkmode = value;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: gender,
                title: const Text('Masculino'),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: gender,
                title: const Text('Femenino'),
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  initialValue: name,
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del Usuario',
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
