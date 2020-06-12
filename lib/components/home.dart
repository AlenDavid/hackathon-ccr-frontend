import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flexible_polyline/flexible_polyline.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Album> futureAlbum;
  Future<Rota> futureRota;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(),
      ),
    );
  }

  Center buildBody() {
    return Center(
      child: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.title);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      title: Text('Hackathon CCz'),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    futureRota = fetchRota();
  }
}

Future<Rota> fetchRota() async {
  final ENDPOINT =
      'https://router.hereapi.com/v8/routes?transportMode=truck&origin=52.5308%2C13.384&destination=52.5264%2C13.3686&apiKey=1VCV15zVXZ1EVSHuJKJxyAsctwBaiMcztF0NCG4B0UY&return=polyline';
  final response = await http.get(ENDPOINT);

  if (response.statusCode == 200) {
    final rotas = json.decode(response.body);
    return Rota.fromJson(rotas);
  } else {
    throw Exception('Failed to load album');
  }
}

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class Rota {
  final int id;
  final String polyline;

  Rota({this.id, this.polyline});

  factory Rota.fromJson(Map<String, dynamic> json) {
    return Rota(
      id: json['routes'][0]['id'],
      polyline: json['routes'][0]['polyline'],
    );
  }
}
