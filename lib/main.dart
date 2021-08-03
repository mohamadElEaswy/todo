import 'package:flutter/material.dart';
import 'package:todo/screens/archived_task/archived_task.dart';
import 'package:todo/screens/done_task/done_task.dart';

import 'screens/new_task/new_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex =0;
  List<Widget> screens = [
    NewTask(),
    DoneTask(),
    ArchivedTask(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks'
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex]),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (i){
          setState(() {
            currentIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'New Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.check),label: 'done Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: 'archived Tasks'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'add new task',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}






//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({required this.title});
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int currentIndex =0;
//   List<Widget> screens = [
//     NewTask(),
//     DoneTask(),
//     ArchivedTask(),
//   ];
//   List<String> titles = [
//     'New Tasks',
//     'Done Tasks',
//     'Archived Tasks'
//   ];
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(titles[currentIndex]),
//       ),
//       body: screens[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: currentIndex,
//         onTap: (i){
//           setState(() {
//             currentIndex = i;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'New Tasks'),
//           BottomNavigationBarItem(icon: Icon(Icons.check),label: 'done Tasks'),
//           BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: 'archived Tasks'),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         tooltip: 'add new task',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
