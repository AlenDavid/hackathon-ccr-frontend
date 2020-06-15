import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(blurRadius: 2, color: Colors.purple, spreadRadius: 0.1)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 100),
              SizedBox(height: 20),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              SizedBox(height: 35),
              TextField(
                autofocus: true,
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              SizedBox(height: 50),
              RaisedButton(
                shape: StadiumBorder(),
                // splashColor: Colors.orange,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Entrar', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white12,
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 60,
        ),
        child: ListView(
          children: [
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("images/logo-pink-way.png"), // TODO: trocar pelo logo
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 50,
              height: 50,
              child: Text(
                'Bem vinda, Caminhoneira!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ), // TODO: trocar pelo logo
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Número do celular',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              height: 40,
              child: FlatButton(
                child: Text(
                  'Recuperar senha',
                  textAlign: TextAlign.right,
                ),
                onPressed: () => {},
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 60,
              width: 40,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.purple,
                    Colors.blue.shade700,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Entrar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 40,
              child: FlatButton(
                child: Text(
                  'Não é cadastrada? Faça agora!',
                  textAlign: TextAlign.right,
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
