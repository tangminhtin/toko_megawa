import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:toko_megawa/widgets/my_cart/sub_item.dart';

class PriceInfo extends StatelessWidget {
  const PriceInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SubItem(title: 'Subtotal', subtitle: '\$80.00'),
        SubItem(title: 'Delivery Free', subtitle: '\$5.0'),
        SubItem(title: 'Discount', subtitle: '50%'),
        SizedBox(
          height: 10,
        ),
        DottedDashedLine(
          height: 1,
          width: double.infinity,
          axis: Axis.horizontal,
          dashColor: Colors.grey,
          strokeWidth: 1,
          dashSpace: 10,
          dashWidth: 10,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
