import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counterA = 0;
  int counterB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Points Counter",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            "Team A",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "$counterA",
                            style: const TextStyle(
                              fontSize: 100,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  counterA++;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text("ADD 1 Point ")),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  counterA += 2;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text("ADD 2 Point ")),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  counterA += 3;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text("ADD 3 Point ")),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "$counterB",
                          style: const TextStyle(
                            fontSize: 100,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              counterB++;

                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text("ADD 1 Point "),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterB += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            child: const Text("ADD 2 Point ")),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterB += 3;

                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            child: const Text("ADD 3 Point ")),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counterA = 0;
                      counterB = 0;
                    });
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
