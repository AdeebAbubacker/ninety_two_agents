import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController searchController;
  final FocusNode focusNode;

  SearchField({
    super.key,
    required this.searchController,
    required this.focusNode,
  });

  final searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      focusNode: searchFocusNode,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search Agent',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
