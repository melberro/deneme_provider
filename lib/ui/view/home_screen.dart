import 'package:deneme_provider/ui/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true, //for Android to center title
          title: const Text("Home"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(children: [
              Expanded(
                child: Center(
                  child: Consumer<CounterProvider>(
                    builder: (context, CounterProvider, _) => Text(
                      counterProvider.getCounter.toString(),
                      style:
                          TextStyle(fontSize: 64, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => counterProvider.incrementCounter(),
                    child: const Text("Increment"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () => counterProvider.decrementCounter(),
                    child: const Text("Decrement"),
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
