import 'package:flutter/material.dart';

import 'details_page.dart';
import 'json_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page')),
      body: ListView.builder(
        itemCount: treeList.length,
        itemBuilder: (context, index) {
          final itemName = treeList[index]['name'];
          final itemImage = treeList[index]['img'];
          final itemInfo = treeList[index]['info'];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              trailing: SizedBox(
                width: 25,
                height: 25,
                child: Image.network(
                  itemImage!,
                  fit: BoxFit.contain,
                ),
                // decoration: BoxDecoration(),
              ),
              title: Text(itemName!),
              subtitle: Text(itemInfo!),
              tileColor: Colors.black12,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                              itemName: itemName,
                              itemImage: itemImage,
                              itemInfo: itemInfo,
                            )));
              },
            ),
          );
        },
      ),
    );
  }
}
