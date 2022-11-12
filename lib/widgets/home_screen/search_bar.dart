import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 236, 233, 233),
                spreadRadius: 1,
                offset: Offset(0, 1),
                blurRadius: 2,
                blurStyle: BlurStyle.inner,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffB2B2B2),
                  spreadRadius: 1,
                  offset: Offset(0, 1),
                  blurRadius: 6,
                  blurStyle: BlurStyle.outer,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search for a product, cloth...',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 25,
                  minWidth: 25,
                ),
              ),
              autocorrect: true,
              keyboardType: TextInputType.text,
              enableSuggestions: true,
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
        ),
      ],
    );
  }
}
