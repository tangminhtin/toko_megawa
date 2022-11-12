import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Sony WH-1000XM4',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'The intuitive and intelligent WH-1000XM4 headphones bring you new improvements in industry-leading noise cancelling technology.',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
