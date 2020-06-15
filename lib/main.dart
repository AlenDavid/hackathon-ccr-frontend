import 'package:flutter/material.dart';
import 'package:frontend/components/calendar.dart';
import 'package:frontend/components/home.dart';
import 'package:frontend/components/login.dart';
import 'package:frontend/components/mainmenu.dart';
import 'package:frontend/components/maps.dart';
import 'package:frontend/components/pe-na-estrada.dart';
import 'package:frontend/components/saude-bem-estar-profissionais.dart';
import 'package:frontend/components/saude-bem-estar.dart';

main() => runApp(
      MaterialApp(
        title: 'Hackathon CCR',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => NewLogin(),
          '/home': (BuildContext context) => NewHome(),
          '/tipo-caminhao': (BuildContext context) => ChoicesCaminhao(),
          '/saude-bem-estar': (BuildContext context) => MenuServicosSaudeBemEstar(),
          '/saude-bem-estar-profissionais': (BuildContext context) => MenuProfissionaisSaudeBemEstar(),
          '/saude-bem-estar-calendar': (BuildContext context) => CalendarS(),
          '/pe-na-estrada': (BuildContext context) => MenuServicosPeNaEstrada(),
          '/pe-na-estrada-mapa': (BuildContext context) => MapsDemo(),
        },
      ),
    );
