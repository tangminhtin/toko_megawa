import 'package:flutter/material.dart';

class UserPinned extends StatelessWidget {
  const UserPinned({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.25),
              backgroundImage: const AssetImage('assets/head_phone.png'),
            ),
            CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.25),
              backgroundImage: const AssetImage('assets/head_phone.png'),
            ),
            CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.25),
              backgroundImage: const AssetImage('assets/head_phone.png'),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        const FittedBox(
          child: Text(
            '8,200+ people pinned this',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
