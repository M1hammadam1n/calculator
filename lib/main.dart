import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                '$count',
                style: const TextStyle(fontSize: 40),
              ),
            ),
            width: 300,
            height: 300,
            color: Colors.black12,
          ),
          Container(
            width: 300,
            height: 150,
            color: Colors.blue[800],
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          count = 0;
                        });
                      },
                      label: Text('  Сброс  '),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      label: const Text(' + '),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          count--;
                        });
                      },
                      label: const Text('   -   '),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton.extended(
                          onPressed: () {
                            setState(() {
                              count += Random().nextInt(500);
                            });
                          },
                          label: const Text(' Run '),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            setState(() {
                              count = count~/ 2;
                            });
                          },
                          label: const Text(' /2 '),
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            setState(() {
                              count *= count;
                            });
                          },
                          label: const Text('  Квадрат  '),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
