import 'package:flutter/material.dart';
import 'package:preferencias_dsm43_equipo9/src/pages/home_page.dart';
import 'package:preferencias_dsm43_equipo9/src/pages/settings_page.dart';
import 'package:preferencias_dsm43_equipo9/src/share_prefs/preferencias_usuario.dart';

void main() async {
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
