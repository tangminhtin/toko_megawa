
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '\$4.999',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(3),
              child: const CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(3),
              child: const CircleAvatar(
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
