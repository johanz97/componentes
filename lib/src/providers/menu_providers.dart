import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class MenuProviders {
  List<dynamic> opciones = [];
  MenuProviders() {
    //_cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProviders = new MenuProviders();
