import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(
        children: [
          Story.simple(
            name: 'Input field',
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input field',
              ),
            ),
          ),
          Story(
            name: 'Raised button',
            builder: (_, k) => RaisedButton(
              onPressed:
                  k.boolean(label: 'Enabled', initial: true) ? () {} : null,
              color: k.options(
                label: 'Color',
                initial: Colors.deepOrange,
                options: const [
                  Option('Red', Colors.deepOrange),
                  Option('Green', Colors.teal),
                ],
              ),
              textColor: Colors.white,
              child: Text(k.text(label: 'Text', initial: 'Raised button')),
            ),
          ),
        ],
      );
}
