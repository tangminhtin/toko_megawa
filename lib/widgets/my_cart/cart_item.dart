import 'package:flutter/material.dart';
import 'package:toko_megawa/widgets/product_detail/quantity.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: key!,
      direction: DismissDirection.startToEnd,
      background: Row(children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xFFF6DDDB),
          child: IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ),
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset('assets/head_phone.png'),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sony WH/100XM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF0159A2),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'The intuitive And intelligent WH-1000XM4',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$128',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
            child: FittedBox(
              child: Quantity(),
            ),
          ),
        ],
      ),
    );
  }
}
