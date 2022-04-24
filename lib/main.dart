import 'package:flutter/material.dart';
import 'package:prov_one/person.dart';
import 'package:prov_one/screen1.dart';
import 'package:prov_one/screen2.dart';
import 'package:prov_one/screen3.dart';
import 'package:prov_one/screen4.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primaryColor: Colors.purple),
//       home: Provider(
//           child: MyApp(),
//           create: (context) => Person(age: 20, name: "Rockey"))));
// }

//ChangeNotifierProvider
// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primaryColor: Colors.purple),
//       home: ChangeNotifierProvider(
//           child: const MyAppt(),
//           create: (context) => Person(age: 20, name: "Rockey"))));
// }

//future provider
// void main() {
//   runApp(MultiProvider(
//     providers: [
//       Provider<Person>(create: (context) => Person(name: "Rockey", age: 21)),
//       FutureProvider<String>(
//           create: (context) => Home().fetchAddress, initialData: "getting data")
//     ],
//     child: const MyAppf(),
//   ));
// }

//StreamProvider with context extension
void main() {
  runApp(
    MultiProvider(
      providers: [
        StreamProvider<String>(
          create: (_) => Countdown.start(),
          initialData: "Begin countdown...",
          catchError: (_, error) => error.toString(),
        ),
        ChangeNotifierProvider<Person>(
          create: (_) => Person(name: 'Yohan', age: 25),
        ),
      ],
      child: MyAppff(),
    ),
  );
}


//provide example
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Provider 1"),
//         centerTitle: true,
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("${Provider.of<Person>(context).name}"),
//               const SizedBox(height: 10),
//               Text("${Provider.of<Person>(context).age}"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
