import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('lottery winning number is 4')),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: x==4 ?Colors.teal : Colors.grey.withOpacity(.2)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x==4 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.done,
                      color: Colors.green,
                      size: 35,
                    ),
                    Text(
                      'Congratulation you win the lottery your number is $x ',
                      textAlign: TextAlign.center,
                    )
                  ],
                ):
                    
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 35,
                    ),
                    Text(
                      'Better luck next time your number is $x '
                      '\ntry again',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = random.nextInt(6);
              print(x);
              setState(() {});
              print('tap');
            },
            child: const Icon(Icons.refresh)),
      ),
    );
  }
}
