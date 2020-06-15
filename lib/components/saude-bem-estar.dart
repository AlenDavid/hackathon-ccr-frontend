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

class MenuServicosSaudeBemEstar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      body: Container(
        color: Colors.white70,
        child: ListView(
          children: [
            cardTitle(),
            cardItemSaudeBemEstar1(context),
            cardItemSaudeBemEstar2(context),
            cardItemSaudeBemEstar3(context),
          ],
        ),
      ),
    );
  }
}

Widget cardTitle() {
  return Card(
    color: Colors.white,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          title: Text('Saúde e bem estar'),
          subtitle: Text('Selecione um serviço'),
        )
      ],
    ),
  );
}

Widget cardItemSaudeBemEstar1(context) {
  return Center(
    child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: Container(
          width: 500,
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(),
                // splashColor: Colors.orange,
                color: Theme.of(context).secondaryHeaderColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/saude-bem-estar-profissionais');
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.black38),
            ),
              const ListTile(
                title: Text('Relaxante'),
                subtitle: Text('Massagens e Limpeza'),
                trailing: Icon(Icons.calendar_today),
              ),
              Container(child: Image.asset('images/posto.jpg')),
            ],
          ),
        ),
      ),
    ),
  );
}


Widget cardItemSaudeBemEstar2(context) {
  return Center(
    child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: Container(
          width: 500,
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(),
                // splashColor: Colors.orange,
                color: Theme.of(context).secondaryHeaderColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/saude-bem-estar-profissionais');
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.black38),
            ),
              const ListTile(
                title: Text('Unhas'),
                subtitle: Text('Manicure, Pedicure e Podologia'),
                trailing: Icon(Icons.calendar_today),
              ),
              Container(child: Image.asset('images/posto.jpg')),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget cardItemSaudeBemEstar3(context) {
  return Center(
    child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: Container(
          width: 500,
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(),
                // splashColor: Colors.orange,
                color: Theme.of(context).secondaryHeaderColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/saude-bem-estar-profissionais');
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.black38),
              ),
              const ListTile(
                title: Text('Cabelo'),
                subtitle: Text('Corte, Escova e Hidratação'),
                trailing: Icon(Icons.calendar_today),
              ),
              Container(child: Image.asset('images/posto.jpg')),
            ],
          ),
        ),
      ),
    ),
  );
}
