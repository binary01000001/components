import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargarData();
  }

  /* void cargarData() { */

    /* rootBundle.loadString('data/menu_opts.json').then((data){
      print(data);
    }); */

    /* rootBundle.loadString('data/menu_opts.json').then((data){
      Map dataMap = json.decode(data);
      print(dataMap['rutas']);
      opciones = dataMap['rutas'];
    });
  } */
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
      Map dataMap = json.decode(resp);
      //print(dataMap['rutas']);
      opciones = dataMap['rutas'];
    return opciones;
  }

}

final menuProvider = _MenuProvider();