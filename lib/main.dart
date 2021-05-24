import 'package:clase8/preguntas/uno.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Encuesta de Satisfacción al Cliente',
      home: Bienvenida(),
    );
  }
}

class Bienvenida extends StatefulWidget {
  @override
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Instituto Tecnologico Superiror de la Sierra Negra de Ajalpan"),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Image.asset(
            'assets/descarga.png',
            height: 100,
          )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Text(
              "Estimado visitante le solicitamos 1 min de su tiempo para evaluar la atención recibida por nuestro personal con el  objetivo de brindarle un mejor servicio.",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, right: 20.0, left: 20.0, bottom: 20.0),
            child: Text(
              "Le pedimos la mayor honestidad posible",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => UNO(),
              ));
            },
            icon: Icon(Icons.assignment_rounded),
            label: Text("Aceptar"),
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
