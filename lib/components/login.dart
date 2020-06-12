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
