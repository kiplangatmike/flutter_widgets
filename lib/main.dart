import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.menu),
      ),
      appBar: AppBar(
        title: Text('Todo List'),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // popupmenu item 1
              PopupMenuItem(
                value: 1,
                // row has two child icon and text.
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text("Star"),
                  ],
                ),
              ),
              // popupmenu item 2
            ],
            offset: Offset(0, 100),
            color: Colors.grey,
            elevation: 2,
          ),
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.teal,
                    child: Column(
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                            height: 200,
                            width: 200,
                          ),
                          child: Container(
                            color: Colors.red,
                            child: const Text('constrained box'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                            height: 200,
                            width: 200,
                          ),
                          child: Container(
                              color: Colors.blue,
                              child: Text('constrained box')),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RotatedBox(
                            quarterTurns: 1,
                            child: ClipPath(
                              child: Image.network(
                                  'https://picsum.photos/250?image=9'),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.green,
                  child: Text('this is a good fitted box'),
                  width: 100,
                  height: 20,
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.green,
                  child: FittedBox(
                    child: Text('this is a good fitted box'),
                  ),
                  width: 100,
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('dashboard'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('contact'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('about'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
