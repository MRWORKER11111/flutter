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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _numberinputcontroller = TextEditingController();

  String _resultText = '';

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
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Number'),
              ),
              ElevatedButton(
                onPressed: () async {
                  int _number = int.parse(_numberinputcontroller.text);
                  final _result = await getnumberfact(number: _number);
                  setState(() {
                    _resultText = _result.text ?? "error";
                  });
                },
                child: Text('Get result'),
              ),
              Text(_resultText)
            ],
          ),
        ),
      ),
    );
  }
}
