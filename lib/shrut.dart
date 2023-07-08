import 'package:flutter/material.dart';

class Shrut extends StatefulWidget {
  const Shrut({super.key});

  @override
  State<Shrut> createState() => _ShrutState();
}

class _ShrutState extends State<Shrut> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("This is new page"),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Go Back"),
        )
      ],
    );
  }
}
