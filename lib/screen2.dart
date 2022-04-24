import "package:flutter/material.dart";
import 'package:prov_one/person.dart';
import 'package:provider/provider.dart';

//example of consumer
class MyAppt extends StatelessWidget {
  const MyAppt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Person>(
          builder: (context, person, center) => Scaffold(
                appBar: AppBar(
                  title:
                      Text("name is: ${person.name} and age is ${person.age} "),
                  centerTitle: true,
                ),
                body: center,
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    return person.addValue();
                  },
                  child: const Icon(Icons.add),
                  tooltip: "neither this will",
                ),
              ),
          child: const Center(child: Text("This will not change"))),
    );
  }
}
