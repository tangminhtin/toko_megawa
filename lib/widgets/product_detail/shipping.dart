import 'package:flutter/material.dart';

class Shipping extends StatelessWidget {
  const Shipping({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Chip(
          backgroundColor: Colors.green,
          label: Text(
            'Free shipping',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
