import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('images/20943930.jpg'),
              ),
            ),
            const Text('No Groceries',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                )),
            const SizedBox(
              height: 16.0,
            ),
            const Text('Fuckin find some'),
          ],
        ),
      ),
    );
  }
}
