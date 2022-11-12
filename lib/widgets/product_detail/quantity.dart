import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  const Quantity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            maximumSize: const Size(45, 45),
            minimumSize: const Size(45, 45),
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            side: const BorderSide(color: Colors.green),
          ),
          child: const Icon(
            Icons.remove,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          '1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            maximumSize: const Size(45, 45),
            minimumSize: const Size(45, 45),
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.green,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
