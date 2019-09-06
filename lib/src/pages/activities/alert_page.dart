import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Text(
                'Mostrar Alerta',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurpleAccent,
              onPressed: () {
                _showAlert(context);
              },
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Text(
                'Mostrar Alerta Cupertino',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurpleAccent,
              onPressed: () {
                _showCupertinoAlert(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text(
              'Primer Alert',
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                    'Este es el cuerpo del Alert, es un texto largo para ver como reacciona el alert'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                textColor: Colors.red,
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              RaisedButton(
                shape: StadiumBorder(),
                textColor: Colors.white,
                color: Colors.deepPurpleAccent,
                child: Text('Ok'),
                onPressed: () {
                  print("Presionamos el botón de OK");
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}

void _showCupertinoAlert(BuildContext context) {
  showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('¡Alerta!'),
          actions: <Widget>[
            CupertinoButton(
              child: Text('salir'),
              onPressed: () {
                print('Botón presionado');
                Navigator.of(context).pop();
              },
            ),
            CupertinoButton(
              child: Text('Allow'),
              onPressed: () {
                print('Botón presionado');
                Navigator.of(context).pop();
              },
            ),
          ],
          content: Column(
            children: <Widget>[
              Text('Hola Esta es una alerta de Cupertino en Android <3')
            ],
          ),
        );
      });
}
