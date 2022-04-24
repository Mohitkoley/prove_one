import 'package:flutter/material.dart';
import 'package:prov_one/person.dart';
import 'package:provider/provider.dart';

class MyAppff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Context extensions"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Name: ${Provider.of<Person>(context).name}"),
              Text("context.select: ${context.select((Person p) => p.age)}"),
              Text("context.watch: ${context.watch<String>()}"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<Person>().addValue();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
