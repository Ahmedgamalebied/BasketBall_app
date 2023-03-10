// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

int teamAPoint = 0;
int teamBPoint = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF343541),
        title: const Text('basketball Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                child: Column(
                  children: [
                    const Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '$teamAPoint',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF343541),
                        maximumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint++;
                        });
                      },
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF343541),
                        maximumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint = teamAPoint + 2;
                        });
                      },
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF343541),
                        maximumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint = teamAPoint + 2;
                        });
                      },
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 300,
                  child:
                      const VerticalDivider(color: Colors.grey, thickness: 2)),
              Container(
                height: 500,
                child: Column(
                  children: [
                    const Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '$teamBPoint',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF343541),
                        maximumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint++;
                        });
                      },
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF343541),
                        maximumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint = teamBPoint + 2;
                        });
                      },
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF343541),
                        maximumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint = teamBPoint + 3;
                        });
                      },
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF343541),
              maximumSize: Size(150, 50),
            ),
            onPressed: () {
              setState(() {
                teamAPoint = 0;
                teamBPoint = 0;
              });
            },
            child: const Text(
              'Reset',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
