import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
// var body

class NewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      body: Container(
        color: Colors.white70,
        child: ListView(
          children: [
            cardCentro(),
            cardItemPeNaEstrada(context),
            cardItemSaudeBemEstar(context)
          ],
        ),
      ),
    );
  }
}

Widget cardCentro() {
  return Card(
    color: Colors.white,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          title: Text('Olá, Sheila'),
          subtitle: Text('Escolha um serviço'),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/avatar.png"),
          ),
        ),
      ],
    ),
  );
}

Widget cardItemPeNaEstrada(context) {
  return Center(
    child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: Container(
          width: 600,
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                shape: StadiumBorder(),
                // splashColor: Colors.orange,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/pe-na-estrada');
                },
                child: Text('Pé na Estrada', style: TextStyle(color: Colors.white)),
            ),
              const ListTile(
                title: Text('Localização de postos CCR no trajeto'),
              ),
              Container(child: Image.asset('images/posto.jpg')),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget cardItemSaudeBemEstar(context) {
  return Center(
    child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: Container(
          width: 600,
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                shape: StadiumBorder(),
                // splashColor: Colors.orange,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/saude-bem-estar');
                },
                child: Text('Saúde e Bem estar', style: TextStyle(color: Colors.white)),
            ),
              const ListTile(
                title: Text('Atendimento Médico e cuidados pessoais'),
              ),
              Container(child: Image.asset('images/posto.jpg')),
            ],
          ),
        ),
      ),
    ),
  );
}
