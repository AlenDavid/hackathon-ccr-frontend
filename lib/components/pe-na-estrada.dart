import 'package:flutter/material.dart';

AppBar defaultAppBar(context) {
  return new AppBar(
    backgroundColor: Colors.white,
    title: Center(
      child: Text(
        'Hackathon CCR',
        style: TextStyle(color: Colors.black45),
      ),
    ),
    leading: FlatButton(
        child: Icon(
          Icons.dehaze,
          color: Colors.black45,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    actions: [
      FlatButton(
        child: Icon(
          Icons.exit_to_app,
          color: Colors.black45,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      )
    ],
  );
}

class MenuServicosPeNaEstrada extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      body: MyStatefulWidget()
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 250,
            height: 50,
            child: Text(
              'Escolha o destino',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ), // TODO: trocar pelo logo
          ),
          SizedBox(height: 20),
          TextField(
            autofocus: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Partida',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            autofocus: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Destino',
            ),
          ),
          SizedBox(height: 50),
          RaisedButton(
            shape: StadiumBorder(),
            // splashColor: Colors.orange,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.pushNamed(context, '/pe-na-estrada-mapa');
            },
            child: Text('Iniciar nova rota', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 250,
            height: 50,
            child: Text(
              'Rotas recentes:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ), // TODO: trocar pelo logo
          ),
          SizedBox(
            width: 300,
            height: 80,
            child: Text(
              'De: Porto Tubarão (Vitória - ES)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ), // TODO: trocar pelo logo
          ),
          SizedBox(
            width: 300,
            height: 80,
            child: Text(
              'Pata: Porto Colonial (São José dos Campos - SP)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ), // TODO: trocar pelo logo
          ),
        ],
      ),
    );
  }
}
