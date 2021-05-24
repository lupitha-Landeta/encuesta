import 'package:clase8/preguntas/cuatro.dart';
import 'package:flutter/material.dart';

class TRES extends StatefulWidget {
  final int contador;
  const TRES(this.contador, {Key key}) : super(key: key);

  @override
  _TRESState createState() => _TRESState();
}

class _TRESState extends State<TRES> {
  int calificacion = 0;
  @override
  Widget build(BuildContext context) {
    calificacion = widget.contador;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("PREGUNTA 3 DE 5")),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                "¿Qué nivel de capacitación considera que tiene nuestro personal?",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 5;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CUATRO(calificacion)));
                  },
                  child: Image.asset('assets/1.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 4;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CUATRO(calificacion)));
                  },
                  child: Image.asset('assets/2.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 3;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CUATRO(calificacion)));
                  },
                  child: Image.asset('assets/3.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 2;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CUATRO(calificacion)));
                  },
                  child: Image.asset('assets/4.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 1;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CUATRO(calificacion)));
                  },
                  child: Image.asset('assets/5.png')),
            ),
          ],
        ),
      ),
    );
  }
}
