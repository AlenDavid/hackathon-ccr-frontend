import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher.dart';


class OpcoesServicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Trilha Segura 2',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Trilha Segura'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body:  new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "https://blogwlmscania.itaipumg.com.br/wp-content/uploads/2017/08/os-4-maiores-desafios-das-mulheres-caminhoneiras-hoje-em-dia-780x450.jpeg",
            width: 60,
          );
        },
        // onTap: (index) async {
        //   await launch('#/maps');
        // },
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
