import 'package:flutter/material.dart';

class ListViewBooksItem extends StatelessWidget {
  const ListViewBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            // child: BooksSeller(),
            child: Text('ok'),
          );
        });
  }
}
