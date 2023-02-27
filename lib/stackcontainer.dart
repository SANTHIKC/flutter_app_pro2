import 'package:flutter/material.dart';

class Containers extends StatefulWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                    child: Image.network(
                        "https://media.istockphoto.com/photos/sphere-shaped-tree-picture-id483916093",
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
