import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final books = [
      'Book 1',
      'Book 2',
      'Book 3',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index]),
            onTap: () {
              Navigator.pushNamed(context, '/review', arguments: books[index]);
            },
          );
        },
      ),
    );
  }
}