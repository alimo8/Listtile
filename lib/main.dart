import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListTile'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
          itemCount: 15, // عدد العناصر
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text(
                  index.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text('Item $index'),
              subtitle: const Text('Item description'),
              trailing: const Icon(Icons.more_vert),
            );
          },
        ),
      ),
    );
  }
}
