import 'package:flutter/material.dart';
import 'package:toko_megawa/widgets/product_detail/coupon_code.dart';
import 'package:toko_megawa/widgets/product_detail/description.dart';
import 'package:toko_megawa/widgets/product_detail/product_continue.dart';
import 'package:toko_megawa/widgets/product_detail/product_image.dart';
import 'package:toko_megawa/widgets/product_detail/product_price.dart';
import 'package:toko_megawa/widgets/product_detail/shipping.dart';
import 'package:toko_megawa/widgets/product_detail/user_pinned.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Details Products',
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
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ProductImage(),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Shipping(),
                          Description(),
                          SizedBox(height: 10),
                          ProductPrice(),
                          Divider(color: Colors.grey),
                          UserPinned(),
                          Divider(color: Colors.grey),
                          CouponCode(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ProductContinue(),
          ],
        ),
      ),
    );
  }
}
