import 'package:flutter/widgets.dart';
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
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: AssetImage("images/avatar.png"),
      ),
    ),
    actions: [
      FlatButton(
        child: Icon(
          Icons.search,
          color: Colors.black45,
          size: 20,
        ),
        onPressed: () {},
      ),
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
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

var lorem =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean feugiat elit vel lacus varius viverra. In eget leo consectetur, fermentum ipsum vel, sodales ante. Donec.';

Widget cardItem() {
  return Card(
    color: Colors.white,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          leading: Icon(Icons.album),
          title: Text('Bruce'),
          subtitle: Text('05/07/2020'),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset('images/posto.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(lorem),
        )
      ],
    ),
  );
}
