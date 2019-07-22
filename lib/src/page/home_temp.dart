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
        //children: _crearItems(),
         children: _createItemsCorta(),
        /* <Widget>[
          ListTile(
            title: Text('Hola mundo')
          ),
          Divider(),
          ListTile(
            title: Text('Hola mundo')
          ),
          Divider(),
          ListTile(
            title: Text('Hola mundo')
          ),
        ], */
      ),
    );
  }
  /* List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    for (var opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista.add(tempWidget);
      lista.add(Divider(color: Colors.blue,));
    }
    return lista;
  } */
  
  List<Widget> _createItemsCorta(){
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading:Icon(Icons.android, size: 30.0,),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap:(){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}