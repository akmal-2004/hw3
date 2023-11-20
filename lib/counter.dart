import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String greetingText;

  const GreetingWidget({super.key, required this.greetingText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      greetingText,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  var counter = 0;

  void increment() {
    setState(() {
      counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        if (counter == 0)
          const Text(
            'Press the button',
            style: TextStyle(fontSize: 24),
          )
        else
          const Text(
            'You have pushed the button',
            style: TextStyle(fontSize: 24),
          ),
        Text(
          counter == 0 ? '' : counter == 1 ? '$counter time' : '$counter times',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 50),
        ElevatedButton(onPressed: increment, child: const Icon(Icons.add)),
        ElevatedButton(onPressed: () {Navigator.pop(context);}, child: const Text('Go back'))
      ],
    );
  }
}


class Counter extends StatelessWidget {
  const Counter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Widgets Practice',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    //     useMaterial3: true,
    //   ),
    //   home: const MyHomePage(title: 'Widgets Practice'),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets Practice'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GreetingWidget(greetingText: 'Hello, World!'),
            SizedBox(height: 30),
            CounterWidget()
          ],
        ),
      ),
    );
  }
}
