import 'package:flutter/material.dart';
import 'config.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _linktreeState createState() => _linktreeState();
}

// ignore: camel_case_types
class _linktreeState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Todo app')),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey,
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(20),
        width: 380,
        height: 140,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(user.title ?? "",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 15),
              child: Text(user.noteDec ?? "",
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 14,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("date : ${user.datein}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                Text('due :  ${user.dateout}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ))
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 93, 94, 93),
        onPressed: () {
          return _showMaterialDialog(context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 109, 108, 108),
            icon: Icon(Icons.home),
            label: 'Backlog',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 109, 108, 108),
            icon: Icon(Icons.business),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 109, 108, 108),
            icon: Icon(Icons.school),
            label: 'Doing',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 109, 108, 108),
            icon: Icon(Icons.school),
            label: 'Done',
          ),
        ],
        currentIndex: 0,
      ),
    ));
  }

  void _showMaterialDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Material Dialog'),
            content: Text('Hey! I am Coflutter!'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // _dismissDialog();
                  },
                  child: const Text('Close')),
              TextButton(
                onPressed: () {
                  print('HelloWorld!');
                  // _dismissDialog();
                },
                child: const Text('HelloWorld!'),
              )
            ],
          );
        });
  }
}
