import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variable que contendrá la url de la imagen que se recibe.
    final String urlImage =
        'https://www.trecebits.com/wp-content/uploads/2019/02/Persona-1-445x445.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
              radius: 23.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: _getBody(urlImage),
      ),
    );
  }
}

Widget _getBody(String urlImage) {
  return ListView(
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 15.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(urlImage),
              fadeInDuration: Duration(milliseconds: 300)),
        ),
      ),
      Padding(
          padding: EdgeInsets.all(30.0),
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(urlImage),
            fadeInDuration: Duration(milliseconds: 300),
          )),
    ],
  );
}
