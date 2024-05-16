import 'dart:ui';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(1.5, -0.2),
              child: Container(
                height: 350,
                width: 350,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.5, -0.2),
              child: Container(
                height: 350,
                width: 330,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1.2),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.orange,
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 100,
                sigmaY: 100,
              ),
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    " some data",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Good morning",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Image.asset("assets/1.png"),
                  const Center(
                    child: Text(
                      "21°C",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "date ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "date",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/11.png",
                            scale: 8,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Sunrise",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5:34",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/12.png",
                            scale: 8,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Sunrise",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5:34",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/13.png",
                            scale: 8,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Sunrise",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5:34",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/14.png",
                            scale: 8,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Sunrise",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5:34",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
