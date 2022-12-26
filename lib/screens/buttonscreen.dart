import 'package:async_await/services/mockapi.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  double _width = 0;
  double _height = 0;
  int totalValue = 2;
  double ratio = 0.2;

  int _counterRapido = 0;
  int _counterMedio = 0;
  int _counterLento = 0;

  void _incrementRapido() async {
    int numero = await MockApi().getFerrariInteger();
    setState(() {
      _counterRapido = numero;
    });
  }

  void _incrementMedio() async {
    int numero = await MockApi().getHyundaiInteger();
    setState(() {
      _counterMedio = numero;
    });
  }

  void _incrementLento() async {
    int numero = await MockApi().getFisherPriceInteger();
    setState(() {
      _counterLento = numero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _incrementRapido,
              elevation: 50.0,
              backgroundColor: const Color.fromARGB(255, 13, 161, 0),
              child: const Icon(Icons.fast_forward),
            ),
            AnimatedContainer(
              height: 10,
              width: _width * ratio,
              duration: Duration(seconds: totalValue),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 13, 161, 0)),
            ),
            Text(
              '$_counterRapido',
              style: const TextStyle(
                color: Color.fromARGB(255, 13, 161, 0),
                fontSize: 42,
                fontWeight: FontWeight.w900,
              ),
            ),
            FloatingActionButton(
              onPressed: _incrementMedio,
              elevation: 50.0,
              backgroundColor: const Color.fromARGB(210, 255, 231, 52),
              child: const Icon(Icons.car_repair),
            ),
            AnimatedContainer(
              height: 10,
              width: _width * ratio,
              duration: Duration(seconds: totalValue),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(210, 255, 231, 52)),
            ),
            Text(
              '$_counterMedio',
              style: const TextStyle(
                color: Color.fromARGB(210, 255, 231, 52),
                fontSize: 42,
                fontWeight: FontWeight.w900,
              ),
            ),
            FloatingActionButton(
              onPressed: _incrementLento,
              elevation: 50.0,
              backgroundColor: const Color.fromARGB(255, 186, 0, 0),
              child: const Icon(Icons.nordic_walking),
            ),
            AnimatedContainer(
              height: 10,
              width: _width * ratio,
              duration: Duration(seconds: totalValue),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 186, 0, 0)),
            ),
            Text(
              '$_counterLento',
              style: const TextStyle(
                color: Color.fromARGB(255, 186, 0, 0),
                fontSize: 42,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
