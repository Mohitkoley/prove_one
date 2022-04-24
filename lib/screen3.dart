import 'package:flutter/material.dart';
import 'package:prov_one/person.dart';
import 'package:provider/provider.dart';

class MyAppf extends StatelessWidget {
  const MyAppf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Person>(
      builder: (context, Person person, _) => Scaffold(
        appBar: AppBar(title: Text("Future provider")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            const Text("User Profile:"),
            Text("Name: ${person.name}"),
            Text("Age: ${person.age}"),
            Consumer<String>(
                builder: (context, String address, child) =>
                    Text("address: $address")),
          ]),
        ),
      ),
    );
  }
}
