import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  TextEditingController _inputFieldDateController = new TextEditingController();
  List<String> _poderes = ['Volar', 'Rayos X', 'Super Fuerza'];
  String _opcionSeleccionada = 'Volar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _createInputs(),
          Divider(),
          _createEmail(),
          Divider(),
          _createDate(context),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPassword(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInputs() {
    return TextField(
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
      //autofocus: true,

      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        counter: Text('Letras ${_nombre.length}'),
        hintText: "Escribe tu nombre",
        labelText: "Nombre",
        helperText: "Solo letras",
        suffix: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Escribe tu email",
        labelText: "Email",
        icon: Icon(Icons.email),
      ),
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text("Nombre es: $_nombre"),
      subtitle: Text("Email es: $_email"),
      trailing: Text(_opcionSeleccionada),
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      onChanged: (valor) {
        setState(() {});
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Escribe tu contraseña",
        labelText: "Password",
        icon: Icon(Icons.lock),
      ),
    );
  }

  Widget _createDate(BuildContext buildContext) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      onTap: () {
        FocusScope.of(buildContext).requestFocus(new FocusNode());
        _selectDate(buildContext);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Fecha de Nacimiento",
        labelText: "Fecha",
        icon: Icon(Icons.calendar_today),
      ),
    );
  }

  _selectDate(BuildContext buildContext) async {
    DateTime picked = await showDatePicker(
      locale: Locale('es', 'ES'),
      context: buildContext,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
    );

    if (picked != null) {
      setState(() {
        _fecha =
            '${picked.day.toString()}-${picked.month.toString()}-${picked.year.toString()}';
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _createDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
         SizedBox(width: 30.0,) ,
         DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
            setState(() {
              _opcionSeleccionada = opt;
            });
          },
        ),
      ],
    );
  }
}
