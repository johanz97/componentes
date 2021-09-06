import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  //List<Widget> _crearItems() {
  //  List<Widget> lista = [];

  //  for (String op in opciones) {
  //    final tempWidget = ListTile(
  //      title: Text(op),
  //    );
  //    lista..add(tempWidget)..add(Divider());
  //  }
  //  return lista;
  //}

  List<Widget> _crearItemsCorta() {
    return opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text('Hola'),
            leading: Icon(Icons.ac_unit_sharp),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
