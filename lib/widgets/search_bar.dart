import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: TextField(
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontSize: 15, color: Colors.white),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(6)),
          hintText: "Istanbul,Turkiye",
          prefix: const Icon(
            Icons.location_on,
            color: Colors.pink,
          ),
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 15, color: Colors.pink),
        ),
        maxLines: 1,
        controller: searchController,
      ),
    );
  }
}
