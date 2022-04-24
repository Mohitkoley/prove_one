import "package:flutter/material.dart";
import 'package:prov_one/person.dart';
import 'package:provider/provider.dart';

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChangeNotifier"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("name is ${Provider.of<Person>(context).name}"),
              SizedBox(height: 20),
              Text(
                "${Provider.of<Person>(context).age}",
                style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Provider.of<Person>(context, listen: false).addValue(),
          child: Icon(Icons.add)),
    );
  }
}
