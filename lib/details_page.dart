import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String itemName;
  final String itemInfo;
  final String itemImage;

  const DetailsPage(
      {Key? key,
      required this.itemName,
      required this.itemInfo,
      required this.itemImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              margin: const EdgeInsets.all(20),
              color: Colors.blueGrey,
              elevation: 0.4,
              child: Container(
                width: 400,
                height: 400,
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                      itemName,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    // SizedBox(height: 10,),
                    // Image.network(itemImage, fit: BoxFit.contain,),
                    SizedBox(
                      height: 250,
                      width: 250,
                      child: Image.network(
                        itemImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      itemInfo,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                  alignment: Alignment(1, 0),
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
              child: const Text('Press to go back'),
              // foregroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
            ),
          ],
        ),
      ),
    );
  }
}
