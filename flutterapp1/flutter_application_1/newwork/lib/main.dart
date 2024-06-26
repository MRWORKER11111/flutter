import 'package:flutter/material.dart';
import 'package:newwork/apis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: screenHome(),
    );
  }
}

class screenHome extends StatelessWidget {
  screenHome({super.key});

  final _numberinputcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _numberinputcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Number'),
              ),
              ElevatedButton(
                onPressed: () {
                  getnumberfact(number: 19);
                },
                child: Text('Get result'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
