import 'package:flutter/material.dart'; //import the pre built widgets
void main() { //main method, starting point of flutter program
  runApp(
  const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}
class Counter extends StatelessWidget { //i-convert ang stateful widget sa stateless
  const Counter({super.key});
 @override
  Widget build(BuildContext context) {
      int _counter = 0; //initial value of counter na zero
      void _increment() { //method to increment the counter
      _counter++; //remove the _setState method
    }
    return Row( //returns the button
      mainAxisAlignment: MainAxisAlignment.center, //keeps the wdiget in the middle
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment, //triggers increment method
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        Text('Count: $_counter'),
      ],
    );
  }
}