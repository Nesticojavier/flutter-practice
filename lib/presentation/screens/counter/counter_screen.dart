import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded)),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 100, fontWeight: FontWeight.w200),
          ),
          Text('click${clickCounter != 1 ? 's' : ''}',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w100))
        ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one)),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  clickCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1)),
        ],
      ),
    );
  }
}
