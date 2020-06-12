import 'package:flutter/material.dart';
import 'package:frontend/components/home.dart';
import 'package:frontend/components/login.dart';

main() => runApp(
      MaterialApp(
        title: 'Hackathon CCR',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        //
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => NewHome(),
          '/': (BuildContext context) => NewLogin(),
        },
      ),
    );
