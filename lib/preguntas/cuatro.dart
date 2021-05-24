import 'package:clase8/preguntas/cinco.dart';
import 'package:flutter/material.dart';

class CUATRO extends StatefulWidget {
  final int contador;
  const CUATRO(this.contador, {Key key}) : super(key: key);

  @override
  _CUATROState createState() => _CUATROState();
}

class _CUATROState extends State<CUATRO> {
  int calificacion = 0;
  @override
  Widget build(BuildContext context) {
    calificacion = widget.contador;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("PREGUNTA 4 DE 5")),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                "¿El tiempo de espera para ser atendido fue razonable?",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 5;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CINCO(calificacion)));
                  },
                  child: Image.asset('assets/1.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 4;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CINCO(calificacion)));
                  },
                  child: Image.asset('assets/2.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 3;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CINCO(calificacion)));
                  },
                  child: Image.asset('assets/3.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 2;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CINCO(calificacion)));
                  },
                  child: Image.asset('assets/4.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 1;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CINCO(calificacion)));
                  },
                  child: Image.asset('assets/5.png')),
            ),
          ],
        ),
      ),
    );
  }
}
