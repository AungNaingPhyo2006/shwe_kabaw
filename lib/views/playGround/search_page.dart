import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      color : Colors.grey[200],
      child: const Center( 
      child: Text("I am Search"),
    ),
    );
  }
}