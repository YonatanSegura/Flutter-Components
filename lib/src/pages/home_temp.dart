///Home temporal
///
///
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      // body: ListView(children: _crearItemsCorta()),
      body: ListView(children: _crearItemsCorta(),)
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item)
     {
      return Column(
        children: <Widget>[
          ListTile(
            
            onTap: () {},
            subtitle: Text(item),
            leading: Icon(Icons.adjust),
            trailing: Icon(Icons.chevron_right),
            title: Text(item + '!'),
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
