import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Emoji extends StatelessWidget {
  const Emoji(this.icon, this.itemText, {super.key});
  final String icon;
  final String itemText;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        icon,
        style: const TextStyle(
          fontSize: 30.0,
        ),
      ),
      Text(itemText),
    ]);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Inspector Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Inspector Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Problem #1
              Row(
                children: const [
                  Text(
                    'Please provide your valuable feedback by sharing your experience with us!',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),

              //Problem #2
              Row(
                //shrinkWrap: true,
                children: const [
                  Emoji('😀', 'Good'),
                  Emoji('😐', 'Average'),
                  Emoji('🙁', 'Bad'),
                ],
              ),

              // Problem #3
              Row(
                children: const [
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Submit button pressed.');
                    },
                    child: const Text(
                      'Submit',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
