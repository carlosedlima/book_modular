  import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final book = ModalRoute.of(context)!.settings.arguments as String;
    final reviews = [
      'Review 1 for $book',
      'Review 2 for $book',
      'Review 3 for $book',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Review'),
      ),
      body: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(reviews[index]),
          );
        },
      ),
    );
  }
}