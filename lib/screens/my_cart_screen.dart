import 'package:flutter/material.dart';
import 'package:toko_megawa/widgets/my_cart/cart_continue.dart';
import 'package:toko_megawa/widgets/my_cart/cart_item.dart';
import 'package:toko_megawa/widgets/my_cart/price_info.dart';
import 'package:toko_megawa/widgets/my_cart/user_address.dart';
import 'package:toko_megawa/widgets/product_detail/coupon_code.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'My Cart',
            softWrap: true,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0.2,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const UserAddress(),
                      const Divider(
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 340,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: 3,
                          itemBuilder: (context, index) =>
                              CartItem(key: ValueKey(index)),
                        ),
                      ),
                      const CouponCode(),
                      const PriceInfo(),
                    ],
                  ),
                ),
              ),
              const CartContinue(),
            ],
          ),
        ),
      ),
    );
  }
}
