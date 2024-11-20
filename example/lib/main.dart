import 'package:flutter/material.dart';
import 'package:neobrutalism_components/neobrutalism_components.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = NeoTheme(
      shadowOffset: 8.0,
      borderWidth: 4.0,
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
    );
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NeoButtonWidget(
                theme: theme,
                color: Colors.blue,
                onPressed: () {},
                child: const Text('Click Me'),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 200,
                height: 300,
                child: NeoCardWidget(
                  theme: theme,
                  color: Colors.blue,
                  child: Center(child: Text('This is a card')),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: NeoInputWidget(
                      theme: theme,
                      textFormField: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Enter your oke')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
