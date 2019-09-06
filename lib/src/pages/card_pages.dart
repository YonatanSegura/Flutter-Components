import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
        ],
        padding: EdgeInsets.all(15.0),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 8.0,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text(
                'Ejemplo',
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  'Este es un texto extremandamente largo para ver como responde el Card frente a textos grandes y se puede expandir o no se ajusta al contenido'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text('Cancelar'),
                    textColor: Colors.red,
                    onPressed: () {},
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    textColor: Colors.white,
                    color: Colors.deepPurpleAccent,
                    child: Text('Ok'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardTipo2() {
    String url =
        'https://images.unsplash.com/photo-1528920304568-7aa06b3dda8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80';
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(url),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text('Hola imagen'))
        ],
      ),
    );
  }
}
