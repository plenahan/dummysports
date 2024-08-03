import 'dart:math';

// import 'package:dummyproj/src/generated/wager.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import './src/wager/wager_grpc.pb.go';

void main() {
  WagerService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DummySports',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DummySports'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      sayHello();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class WagerService {
  ///here enter your host without the http part

  String baseUrl = "localhost";

  WagerService._internal();
  static final WagerService _instance = WagerService._internal();

  factory WagerService() => _instance;

  ///static WagerService instance that we will call when we want to make requests
  static WagerService get instance => _instance;

  ///WagerClient is the  class that was generated for us when we ran the generation command
  ///We will pass a channel to it to intialize it
  late WagerClient _wagerClient;

  ///this will be used to create a channel once we create this class.
  ///Call WagerService().init() before making any call.
  Future<void> init() async {
    final channel = ClientChannel(
      baseUrl,
      port: 8089,
      options: const ChannelOptions(),
    );
    _wagerClient = NewWagerClient(channel);
  }

  ///provide public access to the WagerClient instance
  Client get wagerClient {
    return _wagerClient;
  }
}

Future<void> sayHello() async {
  try {
    CreateRequest wagerRequest = CreateRequest(
        amount: Amount(amount: 100.0, currency: "USD"),
        bet: Bet(line: 6.5, title: "Kyle Kuzma Rebounds"),
        user: User(name: "Patty", email: "patty@email.com"));

    var res = await WagerService.instance.wagerClient.Create(wagerRequest);
    print(res.toString());
  } catch (e) {
    print("error: $e");
  }
}
