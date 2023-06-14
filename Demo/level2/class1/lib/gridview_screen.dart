import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 10.0, // Spacing between each row
          crossAxisSpacing: 10.0, // Spacing between each column
          childAspectRatio: 1.0, // Ratio of item width to item height
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
