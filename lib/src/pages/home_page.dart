import 'package:flutter/material.dart';
import 'package:preferencias_dsm43_equipo9/src/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_dsm43_equipo9/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: '),
          Divider(),
          Text('Genero: ${prefs.genero} '),
          Divider(),
          Text('Nombre de Usuario: '),
          Divider()
        ],
      ),
    );
  }
}
