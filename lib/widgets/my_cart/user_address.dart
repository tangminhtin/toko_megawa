import 'package:flutter/material.dart';

class UserAddress extends StatelessWidget {
  const UserAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.3),
              backgroundImage: const AssetImage('assets/laptop.png'),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Deliver to Jannah',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              'San Diego, California',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.green,
              ),
            ),
            Icon(
              Icons.expand_more,
              color: Colors.green,
            ),
          ],
        ),
      ],
    );
  }
}
