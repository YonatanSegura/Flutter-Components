import 'package:components/src/Utils/icono_strin_util.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Componentes', textAlign: TextAlign.center),
        ),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  //print(menuProvider.opciones);
  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      print('builder------------');
      print(snapshot.data);
      return ListView(
        children: _listItems(snapshot.data, context),
      );
    },
  );
}

List<Widget> _listItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.chevron_right, color: Colors.blue),
      onTap: () {
        Navigator.pushNamed(context, opt['ruta']);
      },
    );

    opciones..add(widgetTemp)..add(Divider());
  });

  return opciones;
}
