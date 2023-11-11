import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function()? onDelete;

  QuoteCard({required this.quote, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            TextButton(
                onPressed: onDelete,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete,color: Colors.black),
                    Text(
                      'Delete quote',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
