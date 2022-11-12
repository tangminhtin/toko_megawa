import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 100),
          width: double.infinity,
          height: 350,
          child: Image.asset(
            'assets/head_phone.png',
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          right: 15,
          top: 10,
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: 70,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/head_phone.png'),
                      ),
                      color: Color(0xFFD6D6D6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
